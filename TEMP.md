# Linkage metric

## Description

A distance between clusters $A = \{a_1, \dots, a_m\}$ and $B = \{b_1, \dots, b_n\}$ is usually one of the following:
- **average linkage**: the average of the distances between all members of the clusters, i.e., $\frac{\sum_i \sum_j d(a_i, b_j)}{mn}$;
- **single linkage**: the distance $\min_{i,j} d(a_i, b_j)$ between the nearest members of the clusters (set-set distance);
- **complete linkage**: the distance $\max_{i,j} d(a_i, b_j)$ between the furthest members of the clusters (spanning distance);
- **centroid linkage**: the distance between the centroids of the clusters, i.e., $||\tilde{a} - \tilde{b}||_2$, where $\tilde{a} = \frac{\sum_i a_i}{m}$ and $\tilde{b} = \frac{\sum_j b_j}{n}$;
- **Ward linkage**: the distance $\sqrt{\frac{mn}{m+n}} ||\tilde{a} - \tilde{b}||_2$.

***

# Ruzicka similarity

$$ \frac{\sum \min\{x_i, y_i\}}{\sum \max\{x_i, y_i\}} $$

## Synonyms

- Soergel distance
- Wave–Edges distance

## Description

The Ruzicka similarity is a similarity on $\mathbb{R}^n$. The corresponding **Soergel distance** is defined as $1 - \frac{\sum \min\{x_i, y_i\}}{\sum \max\{x_i, y_i\}} = \frac{\sum |x_i - y_i|}{\sum \max\{x_i, y_i\}}$. It coincides on $\mathbb{R}_{\ge 0}^n$ with the fuzzy polynucleotide metric. The **Wave–Edges distance** is defined by $\sum \left(1 - \frac{\min\{x_i, y_i\}}{\max\{x_i, y_i\}}\right) = \sum \frac{|x_i - y_i|}{\max\{x_i, y_i\}}$.

***

# Roberts similarity

$$ \frac{\sum (x_i + y_i) \frac{\min\{x_i, y_i\}}{\max\{x_i, y_i\}}}{\sum (x_i + y_i)} $$

## Description

The Roberts similarity is a similarity on $\mathbb{R}^n$.

***

# Ellenberg similarity

$$ \frac{\sum (x_i + y_i) 1_{x_i = y_i \neq 0}}{\sum (x_i + y_i) (1 + 1_{x_i = y_i = 0})} $$

## Description

The Ellenberg similarity is a similarity on $\mathbb{R}^n$.

***

# Gleason similarity

$$ \frac{\sum (x_i + y_i) 1_{x_i = y_i \neq 0}}{\sum (x_i + y_i)} $$

## Description

The Gleason similarity is a similarity on $\mathbb{R}^n$.

***

# Czekanowsky–Dice distance

$$ 1 - \frac{2|X \cap Y|}{|X| + |Y|} = \frac{|X \Delta Y|}{|X| + |Y|} $$

## Abbreviations

- Bray–Curtis distance

## Synonyms

- nonmetric coefficient

## Description

The Czekanowsky–Dice distance is a near-metric on $\{0, 1\}^n$.

## References

1. [Bray and Curtis, 1957](https://doi.org/10.2307/1942268 "An Ordination of the Upland Forest Communities of Southern Wisconsin")

***

# Jaccard similarity

$$ \frac{\sum x_i y_i}{\sum x_i^2 + \sum y_i^2 - \sum x_i y_i} $$

## Synonyms

- Tanimoto similarity
- Tanimoto distance
- biotope distance

## Description

The Jaccard similarity of community is a similarity on $\mathbb{R}^n$. The corresponding **Jaccard distance** is defined by $1 - \frac{\sum x_i y_i}{\sum x_i^2 + \sum y_i^2 - \sum x_i y_i} = \frac{\sum (x_i - y_i)^2}{\sum x_i^2 + \sum y_i^2 - \sum x_i y_i}$. The binary cases of Jaccard, Ellenberg and Ruzicka similarities coincide; it is called **Tanimoto similarity**: $\frac{|X \cap Y|}{|X \cup Y|}$. The **Tanimoto distance** (or biotope distance) is a distance on $\{0, 1\}^n$ defined by $1 - \frac{|X \cap Y|}{|X \cup Y|} = \frac{|X \Delta Y|}{|X \cup Y|}$.

## References

1. [Jaccard, 1908](https://doi.org/10.1007/BF01611216 "Nouvelles recherches sur la distribution florale")

***

# Czekanowsky similarity

$$ \frac{\sum \min\{x_i, y_i\}}{\sum (x_i + y_i)} $$

## Description

The Czekanowsky similarity is a similarity on $\mathbb{R}^n$. The corresponding **Czekanowsky distance** is defined by $1 - \frac{\sum \min\{x_i, y_i\}}{\sum (x_i + y_i)} = \frac{\sum |x_i - y_i|}{\sum (x_i + y_i)}$.

***

# Dice similarity

$$ \frac{\sum x_i y_i}{\sum x_i^2 + \sum y_i^2} $$

## Description

The Dice similarity is a similarity on $\mathbb{R}^n$. The corresponding **Dice distance** is defined by $1 - \frac{\sum x_i y_i}{\sum x_i^2 + \sum y_i^2} = \frac{\sum |x_i - y_i|}{\sum x_i^2 + \sum y_i^2}$.

***

# Maryland Bridge similarity

$$ \frac{1}{2} \left( \frac{\sum x_i y_i}{\sum x_i^2} + \frac{\sum x_i y_i}{\sum y_i^2} \right) $$

## Description

The Maryland Bridge similarity is a similarity on $\mathbb{R}^n$. The corresponding **Maryland Bridge distance** is defined by $1 - \frac{1}{2} \left( \frac{\sum x_i y_i}{\sum x_i^2} + \frac{\sum x_i y_i}{\sum y_i^2} \right)$.

## References

1. [Mirkin and Koonin, 2003](https://doi.org/10.1186/1471-2105-4-2 "A top-down method for building genome classification trees with linear binary hierarchies")

***

# Simpson similarity

$$ \frac{\sum x_i y_i}{\min\{\sum x_i, \sum y_i\}} $$

## Synonyms

- overlap similarity

## Description

The Simpson similarity is a similarity on $\mathbb{R}^n$.

***

# Intersection distance

$$ 1 - \frac{\sum \min\{x_i, y_i\}}{\min\{\sum x_i, \sum y_i\}} $$

## Description

The intersection distance is a distance on $\mathbb{R}^n$. It becomes $\frac{1}{2} \sum |x_i - y_i|$ if $x, y$ are frequency vectors.

***

# Kulczynski similarity 1

$$ \frac{\sum \min\{x_i, y_i\}}{\sum |x_i - y_i|} $$

## Description

The Kulczynski similarity 1 is a similarity on $\mathbb{R}^n$. The corresponding **Kulczynski distance** is $\frac{\sum |x_i - y_i|}{\sum \min\{x_i, y_i\}}$.

***

# Kulczynski similarity 2

$$ \frac{n}{2} \left( \frac{1}{\bar{x}} + \frac{1}{\bar{y}} \right) \sum \min\{x_i, y_i\} $$

## Description

The Kulczynski similarity 2 is a similarity on $\mathbb{R}^n$. In the binary case it coincides with Maryland bridge similarity; its form is $\frac{|X \cap Y| \cdot (|X| + |Y|)}{2|X| \cdot |Y|} = \frac{|X \cap Y|}{2|X|} + \frac{|X \cap Y|}{2|Y|}$.

***

# Motyka similarity

$$ \frac{\sum \min\{x_i, y_i\}}{\sum (x_i + y_i)} = n \frac{\sum \min\{x_i, y_i\}}{\bar{x} + \bar{y}} $$

## Description

The Motyka similarity is a similarity on $\mathbb{R}^n$. The corresponding **Motyka distance** is $1 - \frac{\sum \min\{x_i, y_i\}}{\sum (x_i + y_i)} = \frac{\sum \max\{x_i, y_i\}}{\sum (x_i + y_i)}$.

***

# Bray–Curtis similarity

$$ \frac{2}{n(\bar{x} + \bar{y})} \sum \min\{x_i, y_i\} $$

## Synonyms

- Renkonen percentage similarity

## Description

The Bray–Curtis similarity is a similarity on $\mathbb{R}^n$. It is called Renkonen percentage similarity if $x, y$ are frequency vectors.

## References

1. [Bray and Curtis, 1957](https://doi.org/10.2307/1942268 "An Ordination of the Upland Forest Communities of Southern Wisconsin")

***

# Sørensen distance

$$ 1 - \frac{2}{n(\bar{x} + \bar{y})} \sum \min\{x_i, y_i\} = \frac{\sum |x_i - y_i|}{\sum (x_i + y_i)} $$

## Synonyms

- Bray–Curtis distance
- Sørensen similarity

## Description

The Sørensen distance is defined on $\mathbb{R}^n$. The binary cases of Bray–Curtis, Cleason, Czekanowsky and Dice similarities coincide; it is called **Sørensen similarity**: $\frac{2|X \cap Y|}{|X \cup Y| + |X \cap Y|} = \frac{2|X \cap Y|}{|X| + |Y|}$.

## References

1. [Sørensen, 1948](https://www.semanticscholar.org/paper/A-method-of-establishing-groups-of-equal-amplitude-S%C3%B8rensen/ "A method of establishing groups of equal amplitude in plant sociology based on similarity of species content")

***

# Canberra distance

$$ \sum \frac{|x_i - y_i|}{|x_i| + |y_i|} $$

## Description

The Canberra distance is a distance on $\mathbb{R}^n$.

## References

1. [Lance and Williams, 1967](https://doi.org/10.1093/comjnl/9.4.373 "A General Theory of Classificatory Sorting Strategies")

***

# Baroni–Urbani–Buser similarity

$$ \frac{\sum \min\{x_i, y_i\} + \sqrt{\sum \min\{x_i, y_i\} \sum (\max_{1 \le j \le n} x_j - \max\{x_i, y_i\})}}{\sum \max\{x_i, y_i\} + \sqrt{\sum \min\{x_i, y_i\} \sum (\max_{1 \le j \le n} x_j - \max\{x_i, y_i\})}} $$

## Description

The Baroni–Urbani–Buser similarity is a similarity on $\mathbb{R}^n$. In the binary case it takes the form $\frac{|X \cap Y| + \sqrt{|X \cap Y| \cdot |\overline{X \cup Y}|}}{|X \cup Y| + \sqrt{|X \cap Y| \cdot |\overline{X \cup Y}|}}$.

***

# Power (p, r)-distance

$$ \left( \sum_{i=1}^n |x_i - y_i|^p \right)^{\frac{1}{r}} $$

## Synonyms

- fractional $l_p$-distance

## Description

The power $(p, r)$-distance is a distance on $\mathbb{R}^n$. For $p = r \ge 1$, it is the $l_p$-metric, including the Euclidean, Manhattan and Chebyshev metrics. The case $(p, r) = (2, 1)$ corresponds to the squared Euclidean distance. The power $(p, r)$-distance with $0 < p = r < 1$ is called the **fractional $l_p$-distance**. The **ordinal distance** on $\mathbb{R}^n$ is defined by $\left( \sum_{i=1}^n |\sum_{1 \le j \le i} (x_j - y_j)|^p \right)^{\frac{1}{p}}$.

***

# YJHHR metrics

$$ d(X, Y) = (|X \setminus Y|^p + |Y \setminus X|^p)^{\frac{1}{p}} $$

## Description

The YJHHR metrics are defined for any $p \ge 1$ and two finite sets $X, Y$. Another variant is $d'(X, Y) = \frac{d(X, Y)}{|X \cup Y|}$ if $|X \cup Y| > 0$, and $0$ otherwise.

## References

1. [Yang _et al._, 2016](https://doi.org/10.1093/bioinformatics/btw318 "A distance metric for sets of biological sequences")

***

# Multiplicative distance

$$ d_{MK}(x, y) = -1 + \prod_{i=1}^n (1 + |x_i - y_i|)^{c_i} $$

## Description

The multiplicative distance is defined for any $x, y \in \mathbb{R}^n$, where $c_1, \dots, c_n$ are given positive numbers. Another multiplicative distance for $x, y \in \mathbb{N}^n$ is $d_Q(x, y) = \sum_{i=1}^n ||l(x_i) - l(y_i)||_1$.

## References

1. [Mansouri and Khademi, 2014](https://doi.org/10.1016/j.patrec.2014.04.016 "A new multiplicative distance metric for high-dimensional data")
2. [Qureshi, 2015](https://doi.org/10.1016/j.patrec.2015.03.011 "A novel multiplicative distance metric for numerical data")

***

# Penrose size and shape distances

$$ \sqrt{n} \sum |x_i - y_i| \quad \text{and} \quad \sqrt{\sum ((x_i - \bar{x}) - (y_i - \bar{y}))^2} $$

## Synonyms

- mean character distance

## Description

The Penrose size distance and Penrose shape distance are distances on $\mathbb{R}^n$. The sum of their squares is the squared Euclidean distance. The **mean character distance** is defined by $\frac{\sum |x_i - y_i|}{n}$.

## References

1. [Czekanowsky, 1909](https://www.semanticscholar.org/paper/Zur-Differentialdiagnose-der-Neandertalgruppe-Czekanowski/ "Zur Differentialdiagnose der Neandertalgruppe")

***

# Lorentzian distance

$$ \sum \ln(1 + |x_i - y_i|) $$

## Description

The Lorentzian distance is a distance on $\mathbb{R}^n$.

***

# Effect size

$$ \frac{\bar{x} - \bar{y}}{s} $$

## Synonyms

- statistical distance
- standard distance

## Description

Let $\bar{x}, \bar{y}$ be the means of samples $x, y$ and let $s^2$ be the pooled variance of both samples. The effect size is defined by the formula above. Its symmetric version $\frac{|\bar{x} - \bar{y}|}{s}$ is called statistical distance or standard distance.

## References

1. [Johnson and Wichern, 1982](https://www.pearson.com/us/higher-education/program/Johnson-Applied-Multivariate-Statistical-Analysis-6th-Edition/PGM249031.html "Applied Multivariate Statistical Analysis")
2. [Flury and Riedwyl, 1986](https://doi.org/10.1080/01621459.1986.10478263 "Standard Distance in Statistics")

***

# Binary Euclidean distance

$$ \sqrt{\sum (1_{x_i > 0} - 1_{y_i > 0})^2} $$

## Description

The binary Euclidean distance is a distance on $\mathbb{R}^n$.

***

# Mean censored Euclidean distance

$$ \sqrt{\frac{\sum (x_i - y_i)^2}{\sum 1_{x_i^2 + y_i^2 \neq 0}}} $$

## Description

The mean censored Euclidean distance is a distance on $\mathbb{R}^n$.

***

# Normalized lp-distance

$$ \frac{||x - y||_p}{||x||_p + ||y||_p} $$

## Description

The normalized $l_p$-distance, $1 \le p \le \infty$, is a distance on $\mathbb{R}^n$. The only integer value $p$ for which it is a metric is $p=2$.

***

# Clark distance

$$ \left( \frac{1}{n} \sum \left( \frac{x_i - y_i}{|x_i| + |y_i|} \right)^2 \right)^{\frac{1}{2}} $$

## Description

The Clark distance is a distance on $\mathbb{R}^n$.

## References

1. [Clark, 1952](https://doi.org/10.2307/1931022 "An extension of the coefficient of divergence for use with multiple characters")

***

# Meehl distance

$$ \sum_{1 \le i \le n-1} (x_i - y_i - x_{i+1} + y_{i+1})^2 $$

## Synonyms

- Meehl index

## Description

The Meehl distance is a distance on $\mathbb{R}^n$.

***

# Hellinger distance

$$ \sqrt{2 \sum \left( \sqrt{\frac{x_i}{\bar{x}}} - \sqrt{\frac{y_i}{\bar{y}}} \right)^2} $$

## Synonyms

- Whittaker index of association

## Description

The Hellinger distance is a distance on $\mathbb{R}_+^n$. The **Whittaker index of association** is defined by $\frac{1}{2} \sum |\frac{x_i}{\bar{x}} - \frac{y_i}{\bar{y}}|$.

***

# Symmetric $\chi^2$-measure

$$ \sum \frac{2}{\bar{x} \cdot \bar{y}} \frac{(x_i \bar{y} - y_i \bar{x})^2}{x_i + y_i} $$

## Description

The symmetric $\chi^2$-measure is a distance on $\mathbb{R}^n$.

***

# Symmetric $\chi^2$-distance

$$ \sqrt{\sum \frac{\bar{x} + \bar{y}}{n(x_i + y_i)} \left( \frac{x_i}{\bar{x}} - \frac{y_i}{\bar{y}} \right)^2} = \sqrt{\sum \frac{\bar{x} + \bar{y}}{n(\bar{x} \cdot \bar{y})^2} \frac{(x_i \bar{y} - y_i \bar{x})^2}{x_i + y_i}} $$

## Synonyms

- chi-distance

## Description

The symmetric $\chi^2$-distance is a distance on $\mathbb{R}^n$. It is a weighted Euclidean distance.

***

# Weighted Euclidean distance

$$ \sqrt{(x - y)^T A (x - y)} $$

## Description

The general quadratic-form distance on $\mathbb{R}^n$ is defined by the formula above, where $A$ is a real nonsingular symmetric $n \times n$ matrix. The weighted Euclidean distance is the case $A = \text{diag}(a_i)$, $a_i \neq 0$, i.e., it is $\sqrt{\sum a_i(x_i - y_i)^2}$.

***

# Mahalanobis distance

$$ ||x - y||_A = \sqrt{(x - y) A (x - y)^T} $$

## Synonyms

- quadratic distance
- directionally weighted distance
- standardized Euclidean distance
- normalized Euclidean distance
- scaled Euclidean distance

## Description

The Mahalanobis distance is a semimetric on $\mathbb{R}^n$, where $A$ is a positive-semidefinite matrix. It is a metric if $A$ is positive-definite. Usually, $A = C^{-1}$, where $C$ is a covariance matrix. If $C$ is a diagonal matrix, then $c_{ii} = Var(x_i) = Var(y_i) = \sigma_i^2$ and it holds $||x - y||_{C^{-1}} = \sqrt{\sum_i \frac{(x_i - y_i)^2}{\sigma_i^2}}$, which is called the **standardized Euclidean distance**. The **maximum scaled difference** is defined by $\max_i \frac{(x_i - y_i)^2}{\sigma_i^2}$.

## References

1. [Mahalanobis, 1936](https://www.semanticscholar.org/paper/On-the-generalised-distance-in-statistics-Mahalanobis/ "On the generalised distance in statistics")
2. [Maxwell and Buddemeier, 2002](https://doi.org/10.1007/s00442-002-0917-4 "Maximum scaled difference")

***

# Hamann similarity

$$ \frac{2|X \Delta Y|}{n} - 1 = \frac{n - 2|X \Delta Y|}{n} $$

## Description

The Hamann similarity is a similarity on $\{0, 1\}^n$.

## References

1. [Hamann, 1961](https://doi.org/10.1007/BF02047084 "Merkmalsbestand und Verwandtschaftsbeziehungen der Nematoden")

***

# Rand similarity

$$ 1 - \frac{|X \Delta Y|}{n} $$

## Synonyms

- Sokal–Michener's simple matching

## Description

The Rand similarity is a similarity on $\{0, 1\}^n$. Its square root is called the Euclidean similarity. The corresponding metric $\frac{|X \Delta Y|}{n}$ is called the variance or Manhattan similarity.

***

# Sokal–Sneath similarities

## Description

The Sokal–Sneath similarities 1, 2, 3 are similarities on $\{0, 1\}^n$ defined by $\frac{2|\overline{X \Delta Y}|}{n + |\overline{X \Delta Y}|}$, $\frac{|X \cap Y|}{|X \cup Y| + |X \Delta Y|}$, and $\frac{|\overline{X \Delta Y}|}{|X \Delta Y|}$.

***

# Russel–Rao similarity

$$ \frac{|X \cap Y|}{n} $$

## Description

The Russel–Rao similarity is a similarity on $\{0, 1\}^n$.

***

# Forbes–Mozley similarity

$$ \frac{n|X \cap Y|}{|X||Y|} $$

## Description

The Forbes–Mozley similarity is a similarity on $\{0, 1\}^n$.

***

# Braun–Blanquet similarity

$$ \frac{|X \cap Y|}{\max\{|X|, |Y|\}} $$

## Description

The Braun–Blanquet similarity is a similarity on $\{0, 1\}^n$.

***

# Roger–Tanimoto similarity

$$ \frac{|\overline{X \Delta Y}|}{n + |X \Delta Y|} $$

## Description

The Roger–Tanimoto similarity is a similarity on $\{0, 1\}^n$.

## References

1. [Rogers and Tanimoto, 1960](https://doi.org/10.1126/science.132.3434.1115 "A Computer Program for Classifying Plants")

***

# Faith similarity

$$ \frac{|X \cap Y| + |\overline{X \Delta Y}|}{2n} $$

## Description

The Faith similarity is a similarity on $\{0, 1\}^n$.

***

# Tversky similarity

$$ \frac{|X \cap Y|}{a|X \Delta Y| + b|X \cap Y|} $$

## Description

The Tversky similarity is a similarity on $\{0, 1\}^n$. It becomes the Tanimoto, Sørensen and Kulczynsky 1 similarities for $(a, b) = (1, 1)$, $(\frac{1}{2}, 1)$ and $(1, 0)$, respectively.

***

# Mountford similarity

$$ \frac{2|X \cap Y|}{|X||Y \setminus X| + |Y||X \setminus Y|} $$

## Description

The Mountford similarity is a similarity on $\{0, 1\}^n$.

## References

1. [Mountford, 1962](https://doi.org/10.2307/2257441 "An Index of Similarity and its Application to Classificatory Problems")

***

# Gower–Legendre similarity

$$ \frac{|\overline{X \Delta Y}|}{a|X \Delta Y| + |\overline{X \Delta Y}|} = \frac{|\overline{X \Delta Y}|}{n + (a - 1)|X \Delta Y|} $$

## Description

The Gower–Legendre similarity is a similarity on $\{0, 1\}^n$.

***

# Anderberg similarity

$$ \frac{|X \cap Y|}{4} \left( \frac{1}{|X|} + \frac{1}{|Y|} \right) + \frac{|\overline{X \cup Y}|}{4} \left( \frac{1}{|\overline{X}|} + \frac{1}{|\overline{Y}|} \right) $$

## Synonyms

- Sokal–Sneath 4 similarity

## Description

The Anderberg similarity is a similarity on $\{0, 1\}^n$.

***

# Yule similarities

## Synonyms

- Yule Q similarity
- Yule Y similarity of colligation

## Description

The **Yule Q similarity** is a similarity on $\{0, 1\}^n$ defined by $\frac{|X \cap Y| \cdot |\overline{X \cup Y}| - |X \setminus Y| \cdot |Y \setminus X|}{|X \cap Y| \cdot |\overline{X \cup Y}| + |X \setminus Y| \cdot |Y \setminus X|}$. The **Yule Y similarity of colligation** is defined by $\frac{\sqrt{|X \cap Y| \cdot |\overline{X \cup Y}|} - \sqrt{|X \setminus Y| \cdot |Y \setminus X|}}{\sqrt{|X \cap Y| \cdot |\overline{X \cup Y}|} + \sqrt{|X \setminus Y| \cdot |Y \setminus X|}}$.

## References

1. [Yule, 1900](https://doi.org/10.1098/rsta.1900.0015 "On the Association of Attributes in Statistics")
2. [Yule, 1912](https://doi.org/10.2307/2340126 "On the Methods of Measuring Association Between Two Attributes")

***

# Dispersion similarity

$$ \frac{|X \cap Y| \cdot |\overline{X \cup Y}| - |X \setminus Y| \cdot |Y \setminus X|}{n^2} $$

## Description

The dispersion similarity is a similarity on $\{0, 1\}^n$.

***

# Pearson $\phi$ similarity

$$ \frac{|X \cap Y| \cdot |\overline{X \cup Y}| - |X \setminus Y| \cdot |Y \setminus X|}{\sqrt{|X| \cdot |\overline{X}| \cdot |Y| \cdot |\overline{Y}|}} $$

## Description

The Pearson $\phi$ similarity is a similarity on $\{0, 1\}^n$.

***

# Gower similarity 2

$$ \frac{|X \cap Y| \cdot |\overline{X \cup Y}|}{\sqrt{|X| \cdot |\overline{X}| \cdot |Y| \cdot |\overline{Y}|}} $$

## Synonyms

- Sokal–Sneath 5 similarity

## Description

The Gower 2 similarity is a similarity on $\{0, 1\}^n$.

***

# Pattern difference

$$ \frac{4|X \setminus Y| \cdot |Y \setminus X|}{n^2} $$

## Description

The pattern difference is a distance on $\{0, 1\}^n$.

***

# $Q_0$-difference

$$ \frac{|X \setminus Y| \cdot |Y \setminus X|}{|X \cap Y| \cdot |\overline{X \cup Y}|} $$

## Description

The $Q_0$-difference is a distance on $\{0, 1\}^n$.

***

# Model distance

$$ \sqrt{|X \setminus Y| + |Y \setminus X| - 2 \sum_j \sqrt{\lambda_j}} $$

## Synonyms

- CMD-distance
- canonical measure of distance

## Description

Let $X, Y$ be two data sets, and let $\lambda_j$ be the eigenvalues of the symmetrized cross-correlation matrix $C_{X \setminus Y, Y \setminus X} \times C_{Y \setminus X, X \setminus Y}$. The model distance is a distance on $\{0, 1\}^n$. The **CMD-distance** is $\sqrt{|X| + |Y| - 2 \sum_j \sqrt{\lambda_j}}$, where $\lambda_j$ are the nonzero eigenvalues of the cross-correlation matrix $C_{XY} \times C_{YX}$.

## References

1. [Todeschini, 2004](https://doi.org/10.1002/9783527613106 "Consensus Models in Chemistry")
2. [Todeschini _et al._, 2009](https://doi.org/10.1002/minf.200900004 "CMD: A New Canonical Measure of Distance")

***

# Covariance similarity

$$ \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{n} = \frac{\sum x_i y_i}{n} - \bar{x} \cdot \bar{y} $$

## Description

The covariance similarity is a similarity on $\mathbb{R}^n$.

***

# Pearson correlation similarity

$$ s = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_j - \bar{x})^2 \sum (y_j - \bar{y})^2}} $$

## Synonyms

- Pearson product-moment correlation coefficient
- Pearson distance
- correlation distance

## Description

The Pearson correlation similarity is a similarity on $\mathbb{R}^n$. The **Pearson distance** (or correlation distance) is defined by $1 - s = \frac{1}{2} \sum \left( \frac{x_i - \bar{x}}{\sqrt{\sum (x_j - \bar{x})^2}} - \frac{y_i - \bar{y}}{\sqrt{\sum (y_j - \bar{y})^2}} \right)^2$. A multivariate generalization is the RV coefficient $RV(X, Y) = \frac{Covv(X, Y)}{\sqrt{Covv(X, X) Covv(Y, Y)}}$.

## References

1. [Escoufier, 1973](https://doi.org/10.2307/2529068 "Le Traitement des Variables Vectorielles")

***

# Cosine similarity

$$ \frac{\langle x, y \rangle}{||x||_2 \cdot ||y||_2} = \cos \phi $$

## Synonyms

- Orchini similarity
- angular similarity
- normalized dot product
- Ochiai–Otsuka similarity
- TF-IDF similarity
- cosine distance
- Orloci distance
- chord distance

## Description

The cosine similarity is the case $\bar{x} = \bar{y} = 0$ of the Pearson correlation similarity, where $\phi$ is the angle between vectors $x$ and $y$. In the binary case, it becomes $\frac{|X \cap Y|}{\sqrt{|X| \cdot |Y|}}$ and is called the **Ochiai–Otsuka similarity**. In Record Linkage, it is called **TF-IDF similarity**. The angular semimetric on $\mathbb{R}^n$ is defined by $\arccos \phi$. The **cosine distance** is $1 - \cos \phi$, and the **Orloci distance** is $\sqrt{2(1 - \cos \phi)} = \sqrt{\sum (\frac{x_i}{||x||_2} - \frac{y_i}{||y||_2})^2}$.

***

# Similarity ratio

$$ \frac{\langle x, y \rangle}{\langle x, y \rangle + ||x - y||_2^2} $$

## Synonyms

- Kohonen similarity
- Kumar–Hassebrook similarity
- Tanimoto similarity

## Description

The similarity ratio is a similarity on $\mathbb{R}^n$. Its binary case is the Tanimoto similarity.

***

# Morisita–Horn similarity

$$ \frac{2 \langle x, y \rangle}{||x||_2^2 \cdot \frac{\bar{y}}{\bar{x}} + ||y||_2^2 \cdot \frac{\bar{x}}{\bar{y}}} $$

## Description

The Morisita–Horn similarity is a similarity on $\mathbb{R}^n$.

## References

1. [Morisita, 1959](https://www.jstage.jst.go.jp/article/memsci1950/3/1/3_1_65/_article "Measuring of interspecific association and similarity between communities")

***

# Spearman rank correlation

$$ \frac{\sum (a_i - \bar{a})(b_i - \bar{b})}{\sqrt{\sum (a_j - \bar{a})^2 \sum (b_j - \bar{b})^2}} = 1 - \frac{6}{n(n^2 - 1)} \sum (a_i - b_i)^2 $$

## Synonyms

- Spearman footrule
- Kendall $\tau$ rank correlation

## Description

If the sequences $x, y \in \mathbb{R}^n$ are ranked separately, then the Pearson correlation similarity is approximated by the Spearman $\rho$ rank correlation, where $n > 1$ and $a_i = \text{rank}(x_i)$, $b_i = \text{rank}(y_i)$. The **Spearman footrule** is defined by $1 - \frac{3}{n^2 - 1} \sum |x_i - y_i|$. Another correlation similarity for rankings is the **Kendall $\tau$ rank correlation**: $\frac{2 \sum_{1 \le i < j \le n} \text{sign}(x_i - x_j) \text{sign}(y_i - y_j)}{n(n - 1)}$.

***

# Global correlation distance

$$ I(d) = \frac{n \sum_{1 \le i \neq j \le n} w_{ij}(d) (x_i - \bar{x})(x_j - \bar{x})}{\sum_{1 \le i \neq j \le n} w_{ij}(d) \sum_{1 \le i \le n} (x_i - \bar{x})^2} $$

## Synonyms

- Moran autocorrelation coefficient

## Description

Let $x \in \mathbb{R}^n$ and $(A, d)$ be a metric space with $n$ points $a_1, \dots, a_n$. For any $d > 0$, the Moran autocorrelation coefficient is defined by the formula above, where the weight $w_{ij}(d)$ is $1$ if $d(a_i, a_j) = d$ and $0$, otherwise. The global correlation distance is the least value $d'$ for which $I(d) = 0$.

***

# Log-likelihood distance

$$ \sum_{x \in A} x \log \frac{x}{|A|} + \sum_{x \in B} x \log \frac{x}{|B|} - \sum_{x \in A \cup B} x \log \frac{x}{|A \cup B|} $$

## Description

Given two clusters $A$ and $B$, their log-likelihood distance is the decrease in log-likelihood as they are combined into one cluster.

***

# Distance to regularity

## Synonyms

- Distance to crowding

## Description

SADIE (Spatial Analysis by Distance IndicEs) is a methodology to measure the degree of nonrandomness in 2D spatial patterns of populations. Given $n$ sample units $x_i \in \mathbb{R}^2$ with associated counts $N_i$, the distance to regularity is the minimal total Euclidean distance that the individuals in the sample would have to move, from unit to unit, so that all units contained an identical number of individuals. The distance to crowding is the minimal total distance that individuals in the sample must move so that all are congregated in one unit.

## References

1. [Perry, 1998](https://doi.org/10.1890/0012-9658(1998)079[1008:MOMOSD]2.0.CO;2 "Measures of spatial pattern for counts")

***

# Cook distance

## Description

The Cook distance is a distance on $\mathbb{R}^n$ giving a statistical measure of deciding if some $i$-th observation alone affects much regression estimates. It is a normalized squared Euclidean distance between estimated parameters from regression models constructed from all data and from data without $i$-th observation.

***

# Periodicity p-self-distance

## Description

A data stream $x = (x_1, \dots, x_n)$ is $p$-periodic approximatively, for given $1 \le p \le \frac{n}{2}$ and distance function $d$ between $p$-blocks of $x$, if the periodicity $p$-self-distance $\sum_{i \neq j} d((x_{jp+1}, \dots, x_{jp+p}), (x_{ip+1}, \dots, x_{ip+p}))$ is below some threshold.

## References

1. [Ergun _et al._, 2004](https://doi.org/10.1145/1007352.1007390 "Periodicity and array-based algorithms")

***

# Heterogeneous distance

$$ \sqrt{\sum_{j=1}^n d_j^2(x_{ij}, y_j)} $$

## Description

A heterogeneous distance $d(x_i, y)$ is defined by the formula above, with $d_j(x_{ij}, y_j) = 1$ if $x_{ij}$ or $y_j$ is unknown. If the attribute $j$ is nominal, then $d_j(x_{ij}, y_j)$ is defined as $1_{x_{ij} \neq y_j}$, or as $\sum_a \left| \frac{|\{1 \le t \le m : x_{t0} = a, x_{ij} = x_{ij}\}|}{|\{1 \le t \le m : x_{tj} = x_{ij}\}|} - \frac{|\{1 \le t \le m : x_{t0} = a, x_{ij} = y_j\}|}{|\{1 \le t \le m : x_{tj} = y_j\}|} \right|^q$ for $q = 1$ or $2$. For continuous attributes $j$, the number $d_j$ is taken to be $|x_{ij} - y_j|$ divided by $\max_t x_{tj} - \min_t x_{tj}$, or by $\frac{1}{4}$ of the standard deviation of values $x_{tj}$.

## References

1. [Wilson and Martinez, 1997](https://doi.org/10.1613/jair.346 "Improved Heterogeneous Distance Functions")