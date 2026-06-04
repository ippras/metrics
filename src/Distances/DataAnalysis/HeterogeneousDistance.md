# Heterogeneous distance

$$ \sqrt{\sum_{j=1}^n d_j^2(x_{ij}, y_j)} $$

## Description

A heterogeneous distance $d(x_i, y)$ is defined by the formula above, with $d_j(x_{ij}, y_j) = 1$ if $x_{ij}$ or $y_j$ is unknown. If the attribute $j$ is nominal, then $d_j(x_{ij}, y_j)$ is defined as $1_{x_{ij} \neq y_j}$, or as $\sum_a \left| \frac{|\{1 \le t \le m : x_{t0} = a, x_{ij} = x_{ij}\}|}{|\{1 \le t \le m : x_{tj} = x_{ij}\}|} - \frac{|\{1 \le t \le m : x_{t0} = a, x_{ij} = y_j\}|}{|\{1 \le t \le m : x_{tj} = y_j\}|} \right|^q$ for $q = 1$ or $2$. For continuous attributes $j$, the number $d_j$ is taken to be $|x_{ij} - y_j|$ divided by $\max_t x_{tj} - \min_t x_{tj}$, or by $\frac{1}{4}$ of the standard deviation of values $x_{tj}$.

## References

1. [Wilson and Martinez, 1997](https://doi.org/10.1613/jair.346 "Improved Heterogeneous Distance Functions")