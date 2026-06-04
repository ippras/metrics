# Weighted Euclidean distance

$$ \sqrt{(x - y)^T A (x - y)} $$

## Description

The general quadratic-form distance on $\mathbb{R}^n$ is defined by the formula above, where $A$ is a real nonsingular symmetric $n \times n$ matrix. The weighted Euclidean distance is the case $A = \text{diag}(a_i)$, $a_i \neq 0$, i.e., it is $\sqrt{\sum a_i(x_i - y_i)^2}$.