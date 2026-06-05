use polars::prelude::*;

/// Вспомогательная функция для булевых дистанций.
/// Возвращает кортеж из 4 выражений: (c_TT, c_TF, c_FT, c_FF)
fn bool_counts(u: Expr, v: Expr, w: Option<Expr>) -> (Expr, Expr, Expr, Expr) {
    let u_bool = u.cast(DataType::Boolean);
    let v_bool = v.cast(DataType::Boolean);

    let mut c_tt = u_bool.clone().and(v_bool.clone()).cast(DataType::Float64);
    let mut c_tf = u_bool
        .clone()
        .and(v_bool.clone().not())
        .cast(DataType::Float64);
    let mut c_ft = u_bool
        .clone()
        .not()
        .and(v_bool.clone())
        .cast(DataType::Float64);
    let mut c_ff = u_bool.not().and(v_bool.not()).cast(DataType::Float64);

    if let Some(weight) = w {
        c_tt = c_tt * weight.clone();
        c_tf = c_tf * weight.clone();
        c_ft = c_ft * weight.clone();
        c_ff = c_ff * weight;
    }

    (c_tt.sum(), c_tf.sum(), c_ft.sum(), c_ff.sum())
}

/// Minkowski distance
pub fn minkowski(u: Expr, v: Expr, p: f64, w: Option<Expr>) -> Expr {
    let mut diff = (u - v).abs().pow(lit(p));
    if let Some(weight) = w {
        diff = diff * weight;
    }
    diff.sum().pow(lit(1.0 / p))
}

/// Euclidean distance
pub fn euclidean(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    minkowski(u, v, 2.0, w)
}

/// Squared Euclidean distance
pub fn sqeuclidean(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let mut diff_sq = (u - v).pow(lit(2.0));
    if let Some(weight) = w {
        diff_sq = diff_sq * weight;
    }
    diff_sq.sum()
}

/// Standardized Euclidean distance
pub fn seuclidean(u: Expr, v: Expr, var: Expr) -> Expr {
    ((u - v).pow(lit(2.0)) / var).sum().sqrt()
}

/// City Block (Manhattan) distance
pub fn cityblock(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let mut diff_abs = (u - v).abs();
    if let Some(weight) = w {
        diff_abs = diff_abs * weight;
    }
    diff_abs.sum()
}

/// Chebyshev distance
pub fn chebyshev(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let mut diff_abs = (u - v).abs();
    if let Some(weight) = w {
        diff_abs = diff_abs * weight;
    }
    diff_abs.max()
}

/// Cosine distance
pub fn cosine(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let (uv, uu, vv) = match w {
        Some(weight) => (
            u.clone() * v.clone() * weight.clone(),
            u.clone() * u.clone() * weight.clone(),
            v.clone() * v.clone() * weight,
        ),
        None => (
            u.clone() * v.clone(),
            u.clone() * u.clone(),
            v.clone() * v.clone(),
        ),
    };
    lit(1.0) - (uv.sum() / (uu.sum().sqrt() * vv.sum().sqrt()))
}

/// Correlation distance
pub fn correlation(u: Expr, v: Expr, w: Option<Expr>, centered: bool) -> Expr {
    if !centered {
        return cosine(u, v, w);
    }

    let (u_mean, v_mean) = match w.clone() {
        Some(weight) => {
            let w_sum = weight.clone().sum();
            let w_norm = weight.clone() / w_sum;
            (
                (u.clone() * w_norm.clone()).sum(),
                (v.clone() * w_norm).sum(),
            )
        }
        None => (u.clone().mean(), v.clone().mean()),
    };

    let u_centered = u - u_mean;
    let v_centered = v - v_mean;

    cosine(u_centered, v_centered, w)
}

/// Hamming distance
pub fn hamming(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let u_ne_v = u.neq(v).cast(DataType::Float64);
    match w {
        Some(weight) => {
            let w_norm = weight.clone() / weight.sum();
            (u_ne_v * w_norm).sum()
        }
        None => u_ne_v.mean(),
    }
}

/// Jaccard distance
pub fn jaccard(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let u_bool = u.neq(lit(0));
    let v_bool = v.neq(lit(0));

    let unequal = u_bool.clone().xor(v_bool.clone()).cast(DataType::Float64);
    let nonzero = u_bool.or(v_bool).cast(DataType::Float64);

    let (num, den) = match w {
        Some(weight) => ((unequal * weight.clone()).sum(), (nonzero * weight).sum()),
        None => (unequal.sum(), nonzero.sum()),
    };

    when(den.clone().eq(lit(0.0)))
        .then(lit(0.0))
        .otherwise(num / den)
}

/// Bray-Curtis distance
pub fn braycurtis(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let mut l1_diff = (u.clone() - v.clone()).abs();
    let mut l1_sum = (u + v).abs();

    if let Some(weight) = w {
        l1_diff = l1_diff * weight.clone();
        l1_sum = l1_sum * weight;
    }
    l1_diff.sum() / l1_sum.sum()
}

/// Canberra distance
pub fn canberra(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let num = (u.clone() - v.clone()).abs();
    let den = u.abs() + v.abs();

    let mut term = when(den.clone().eq(lit(0.0)))
        .then(lit(0.0))
        .otherwise(num / den);

    if let Some(weight) = w {
        term = term * weight;
    }
    term.sum()
}

/// Jensen-Shannon distance
pub fn jensenshannon(p: Expr, q: Expr, base: Option<f64>) -> Expr {
    let p_norm = p.clone() / p.clone().sum();
    let q_norm = q.clone() / q.clone().sum();
    let m = (p_norm.clone() + q_norm.clone()) / lit(2.0);

    let rel_entr = |x: Expr, y: Expr| -> Expr {
        let term = x.clone() * (x.clone() / y).log(std::f64::consts::E);
        when(x.eq(lit(0.0))).then(lit(0.0)).otherwise(term)
    };

    let left = rel_entr(p_norm, m.clone()).sum();
    let right = rel_entr(q_norm, m).sum();

    let mut js = left + right;
    if let Some(b) = base {
        js = js / lit(b).log(std::f64::consts::E);
    }

    (js / lit(2.0)).sqrt()
}

/// Yule dissimilarity
pub fn yule(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let (c_tt, c_tf, c_ft, c_ff) = bool_counts(u, v, w);
    let half_r = c_tf * c_ft;
    let num = lit(2.0) * half_r.clone();
    let den = c_tt * c_ff + half_r.clone();

    when(half_r.eq(lit(0.0)))
        .then(lit(0.0))
        .otherwise(num / den)
}

/// Dice dissimilarity
pub fn dice(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let (c_tt, c_tf, c_ft, _) = bool_counts(u, v, w);
    let num = c_tf.clone() + c_ft.clone();
    let den = lit(2.0) * c_tt + c_tf + c_ft;
    num / den
}

/// Rogers-Tanimoto dissimilarity
pub fn rogerstanimoto(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let (c_tt, c_tf, c_ft, c_ff) = bool_counts(u, v, w);
    let r = lit(2.0) * (c_tf + c_ft);
    r.clone() / (c_tt + c_ff + r)
}

/// Russell-Rao dissimilarity
pub fn russellrao(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let (c_tt, _, _, _) = bool_counts(u.clone(), v, w.clone());
    let n = match w {
        Some(weight) => weight.sum(),
        None => u.count().cast(DataType::Float64),
    };
    (n.clone() - c_tt) / n
}

/// Sokal-Sneath dissimilarity
pub fn sokalsneath(u: Expr, v: Expr, w: Option<Expr>) -> Expr {
    let (c_tt, c_tf, c_ft, _) = bool_counts(u, v, w);
    let r = lit(2.0) * (c_tf + c_ft);
    r.clone() / (c_tt + r)
}
