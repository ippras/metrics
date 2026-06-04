# Linkage metric

## Description

A distance between clusters $A = \{a_1, \dots, a_m\}$ and $B = \{b_1, \dots, b_n\}$ is usually one of the following:
- **average linkage**: the average of the distances between all members of the clusters, i.e., $\frac{\sum_i \sum_j d(a_i, b_j)}{mn}$;
- **single linkage**: the distance $\min_{i,j} d(a_i, b_j)$ between the nearest members of the clusters (set-set distance);
- **complete linkage**: the distance $\max_{i,j} d(a_i, b_j)$ between the furthest members of the clusters (spanning distance);
- **centroid linkage**: the distance between the centroids of the clusters, i.e., $||\tilde{a} - \tilde{b}||_2$, where $\tilde{a} = \frac{\sum_i a_i}{m}$ and $\tilde{b} = \frac{\sum_j b_j}{n}$;
- **Ward linkage**: the distance $\sqrt{\frac{mn}{m+n}} ||\tilde{a} - \tilde{b}||_2$.