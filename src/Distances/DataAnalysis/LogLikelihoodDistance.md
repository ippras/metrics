# Log-likelihood distance

$$ \sum_{x \in A} x \log \frac{x}{|A|} + \sum_{x \in B} x \log \frac{x}{|B|} - \sum_{x \in A \cup B} x \log \frac{x}{|A \cup B|} $$

## Description

Given two clusters $A$ and $B$, their log-likelihood distance is the decrease in log-likelihood as they are combined into one cluster.