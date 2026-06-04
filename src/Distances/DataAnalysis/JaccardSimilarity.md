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