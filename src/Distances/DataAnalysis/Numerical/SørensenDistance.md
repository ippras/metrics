# Sørensen distance

`Numerical`

$$ 1 - \frac{2}{n(\bar{x} + \bar{y})} \sum \min\{x_i, y_i\} = \frac{\sum |x_i - y_i|}{\sum (x_i + y_i)} $$

## Synonyms

- Bray–Curtis distance
- Sørensen similarity

## Description

The Sørensen distance is defined on $\mathbb{R}^n$. The binary cases of Bray–Curtis, Cleason, Czekanowsky and Dice similarities coincide; it is called **Sørensen similarity**: $\frac{2|X \cap Y|}{|X \cup Y| + |X \cap Y|} = \frac{2|X \cap Y|}{|X| + |Y|}$.

## References

1. [Sørensen, 1948](https://www.semanticscholar.org/paper/A-method-of-establishing-groups-of-equal-amplitude-S%C3%B8rensen/ "A method of establishing groups of equal amplitude in plant sociology based on similarity of species content")