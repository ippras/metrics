# Cosine similarity

`Correlation`

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