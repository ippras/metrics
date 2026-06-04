# Baroni–Urbani–Buser similarity

`Numerical`

$$ \frac{\sum \min\{x_i, y_i\} + \sqrt{\sum \min\{x_i, y_i\} \sum (\max_{1 \le j \le n} x_j - \max\{x_i, y_i\})}}{\sum \max\{x_i, y_i\} + \sqrt{\sum \min\{x_i, y_i\} \sum (\max_{1 \le j \le n} x_j - \max\{x_i, y_i\})}} $$

## Description

The Baroni–Urbani–Buser similarity is a similarity on $\mathbb{R}^n$. In the binary case it takes the form $\frac{|X \cap Y| + \sqrt{|X \cap Y| \cdot |\overline{X \cup Y}|}}{|X \cup Y| + \sqrt{|X \cap Y| \cdot |\overline{X \cup Y}|}}$.