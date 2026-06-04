# Ruzicka similarity

$$ \frac{\sum \min\{x_i, y_i\}}{\sum \max\{x_i, y_i\}} $$

## Synonyms

- Soergel distance
- Wave–Edges distance

## Description

The Ruzicka similarity is a similarity on $\mathbb{R}^n$. The corresponding **Soergel distance** is defined as $1 - \frac{\sum \min\{x_i, y_i\}}{\sum \max\{x_i, y_i\}} = \frac{\sum |x_i - y_i|}{\sum \max\{x_i, y_i\}}$. It coincides on $\mathbb{R}_{\ge 0}^n$ with the fuzzy polynucleotide metric. The **Wave–Edges distance** is defined by $\sum \left(1 - \frac{\min\{x_i, y_i\}}{\max\{x_i, y_i\}}\right) = \sum \frac{|x_i - y_i|}{\max\{x_i, y_i\}}$.