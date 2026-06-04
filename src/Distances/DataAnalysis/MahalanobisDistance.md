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