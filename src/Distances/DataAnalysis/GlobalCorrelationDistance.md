# Global correlation distance

$$ I(d) = \frac{n \sum_{1 \le i \neq j \le n} w_{ij}(d) (x_i - \bar{x})(x_j - \bar{x})}{\sum_{1 \le i \neq j \le n} w_{ij}(d) \sum_{1 \le i \le n} (x_i - \bar{x})^2} $$

## Synonyms

- Moran autocorrelation coefficient

## Description

Let $x \in \mathbb{R}^n$ and $(A, d)$ be a metric space with $n$ points $a_1, \dots, a_n$. For any $d > 0$, the Moran autocorrelation coefficient is defined by the formula above, where the weight $w_{ij}(d)$ is $1$ if $d(a_i, a_j) = d$ and $0$, otherwise. The global correlation distance is the least value $d'$ for which $I(d) = 0$.