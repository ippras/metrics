# Spearman rank correlation

`Correlation`

$$ \frac{\sum (a_i - \bar{a})(b_i - \bar{b})}{\sqrt{\sum (a_j - \bar{a})^2 \sum (b_j - \bar{b})^2}} = 1 - \frac{6}{n(n^2 - 1)} \sum (a_i - b_i)^2 $$

## Synonyms

- Spearman footrule
- Kendall $\tau$ rank correlation

## Description

If the sequences $x, y \in \mathbb{R}^n$ are ranked separately, then the Pearson correlation similarity is approximated by the Spearman $\rho$ rank correlation, where $n > 1$ and $a_i = \text{rank}(x_i)$, $b_i = \text{rank}(y_i)$. The **Spearman footrule** is defined by $1 - \frac{3}{n^2 - 1} \sum |x_i - y_i|$. Another correlation similarity for rankings is the **Kendall $\tau$ rank correlation**: $\frac{2 \sum_{1 \le i < j \le n} \text{sign}(x_i - x_j) \text{sign}(y_i - y_j)}{n(n - 1)}$.