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