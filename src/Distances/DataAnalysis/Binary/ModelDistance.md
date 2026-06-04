# Model distance

`Binary`

$$ \sqrt{|X \setminus Y| + |Y \setminus X| - 2 \sum_j \sqrt{\lambda_j}} $$

## Synonyms

- CMD-distance
- canonical measure of distance

## Description

Let $X, Y$ be two data sets, and let $\lambda_j$ be the eigenvalues of the symmetrized cross-correlation matrix $C_{X \setminus Y, Y \setminus X} \times C_{Y \setminus X, X \setminus Y}$. The model distance is a distance on $\{0, 1\}^n$. The **CMD-distance** is $\sqrt{|X| + |Y| - 2 \sum_j \sqrt{\lambda_j}}$, where $\lambda_j$ are the nonzero eigenvalues of the cross-correlation matrix $C_{XY} \times C_{YX}$.

## References

1. [Todeschini, 2004](https://doi.org/10.1002/9783527613106 "Consensus Models in Chemistry")
2. [Todeschini _et al._, 2009](https://doi.org/10.1002/minf.200900004 "CMD: A New Canonical Measure of Distance")