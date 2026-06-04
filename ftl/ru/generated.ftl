Math_Correlations_Pearson = Коэффициент корреляции Пирсона
    .markdown =
        # Коэффициент корреляции Пирсона

        $$\frac{"{"}\mathrm{"{"}cov{"}"}\[X, Y\]{"}"}{"{"}\sigma\_{"{"}X{"}"} \sigma\_{"{"}Y{"}"}{"}"}$$

        - {"*"}{"*"}Описание{"*"}{"*"}: Насколько векторы линейно зависимы.
        - {"*"}{"*"}Когда полезно{"*"}{"*"}: Когда важна тенденция (линейная) изменения значений, а не их абсолютные величины или масштаб. Например, для поиска схожих временных рядов по форме.
        - {"*"}{"*"}Диапазон{"*"}{"*"}: От `-1` до `1`. Где `-1` - идеальная отрицательная корреляция; `1` - идеальная положительная корреляция.

         > 
         > Пирсона

        [wikipedia.org](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient)

Math_Correlations_Spearman = Spearman's rank correlation coefficient
    .markdown =
        # Spearman's rank correlation coefficient

        `correlation`

        $$\frac{"{"}\mathrm{"{"}cov{"}"}(R\[X\], R\[Y\]){"}"}{"{"}\sigma\_{"{"}R\[X\]{"}"} \sigma\_{"{"}R\[Y\]{"}"}{"}"}$$

        - {"*"}{"*"}Описание{"*"}{"*"}: Насколько векторы монотонно зависимы (основано на рангах значений, а не на самих значениях).
        - {"*"}{"*"}Когда полезно{"*"}{"*"}: Когда важна монотонная связь (не обязательно линейная), и данные могут содержать выбросы или не иметь линейной зависимости. Менее чувствительно к выбросам, чем расстояние Пирсона.
        - {"*"}{"*"}Диапазон{"*"}{"*"}: От `-1` до `1`. Где `-1` - идеальная отрицательная корреляция; `1` - идеальная положительная корреляция.

        1. [wikipedia.org](https://en.wikipedia.org/wiki/Spearman%27s_rank_correlation_coefficient)

Math_Moments_Kurtosis = Kurtosis
    .markdown =
        # Kurtosis

        $$\tilde{"{"}\mu{"}"}\_4 = \frac{"{"}\mu_4{"}"}{"{"}\mu_3^{"{"}4/2{"}"}{"}"} = \frac{"{"}\mu_4{"}"}{"{"}\sigma^4{"}"} = \frac{"{"}\operatorname{"{"}E{"}"}\[(X - \mu)^4\]{"}"}{"{"}(\operatorname{"{"}E{"}"}\[(X - \mu)^2\])^{"{"}4/2{"}"}{"}"}$$

        - {"*"}{"*"}Description{"*"}{"*"}: The fourth [standardized moment](https://en.wikipedia.org/wiki/Standardized_moment) refers to the kurtosis.
        - {"*"}{"*"}Interpretation{"*"}{"*"}:
          - `< 0`: ;
          - `= 0`: ;
          - `> 0`: .

        1. [wikipedia.org](https://en.wikipedia.org/wiki/Kurtosis)

Math_Moments_Skewness = Skewness
    .markdown =
        # Skewness

        $$\tilde{"{"}\mu{"}"}\_3 = \frac{"{"}\mu_3{"}"}{"{"}\mu_2^{"{"}3/2{"}"}{"}"} = \frac{"{"}\mu_3{"}"}{"{"}\sigma^3{"}"} = \frac{"{"}\operatorname{"{"}E{"}"}\[(X - \mu)^3\]{"}"}{"{"}(\operatorname{"{"}E{"}"}\[(X - \mu)^2\])^{"{"}3/2{"}"}{"}"}$$

        - {"*"}{"*"}Description{"*"}{"*"}: The third [standardized moment](https://en.wikipedia.org/wiki/Standardized_moment) is a measure of skewness.
        - {"*"}{"*"}Interpretation{"*"}{"*"}:
          - `< 0` ;
          - `= 0` ;
          - `> 0` .

        1. [wikipedia.org](https://en.wikipedia.org/wiki/Skewness)

Math_Distances_DataAnalysis_AnderbergSimilarity = Anderberg similarity
    .markdown =
        # Anderberg similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y|{"}"}{"{"}4{"}"} \left( \frac{"{"}1{"}"}{"{"}|X|{"}"} + \frac{"{"}1{"}"}{"{"}|Y|{"}"} \right) + \frac{"{"}|\overline{"{"}X \cup Y{"}"}|{"}"}{"{"}4{"}"} \left( \frac{"{"}1{"}"}{"{"}|\overline{"{"}X{"}"}|{"}"} + \frac{"{"}1{"}"}{"{"}|\overline{"{"}Y{"}"}|{"}"} \right) $$

        ## Synonyms

        - Sokal–Sneath 4 similarity

        ## Description

        The Anderberg similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_BraunBlanquetSimilarity = Braun–Blanquet similarity
    .markdown =
        # Braun–Blanquet similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y|{"}"}{"{"}\max{"{"}|X|, |Y|{"}"}{"}"} $$

        ## Description

        The Braun–Blanquet similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_DispersionSimilarity = Dispersion similarity
    .markdown =
        # Dispersion similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}| - |X \setminus Y| \cdot |Y \setminus X|{"}"}{"{"}n^2{"}"} $$

        ## Description

        The dispersion similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_FaithSimilarity = Faith similarity
    .markdown =
        # Faith similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y| + |\overline{"{"}X \Delta Y{"}"}|{"}"}{"{"}2n{"}"} $$

        ## Description

        The Faith similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_ForbesMozleySimilarity = Forbes–Mozley similarity
    .markdown =
        # Forbes–Mozley similarity

        `Binary`

        $$ \frac{"{"}n|X \cap Y|{"}"}{"{"}|X||Y|{"}"} $$

        ## Description

        The Forbes–Mozley similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_GowerLegendreSimilarity = Gower–Legendre similarity
    .markdown =
        # Gower–Legendre similarity

        `Binary`

        $$ \frac{"{"}|\overline{"{"}X \Delta Y{"}"}|{"}"}{"{"}a|X \Delta Y| + |\overline{"{"}X \Delta Y{"}"}|{"}"} = \frac{"{"}|\overline{"{"}X \Delta Y{"}"}|{"}"}{"{"}n + (a - 1)|X \Delta Y|{"}"} $$

        ## Description

        The Gower–Legendre similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_GowerSimilarity_2 = Gower similarity 2
    .markdown =
        # Gower similarity 2

        `Binary`

        $$ \frac{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}|{"}"}{"{"}\sqrt{"{"}|X| \cdot |\overline{"{"}X{"}"}| \cdot |Y| \cdot |\overline{"{"}Y{"}"}|{"}"}{"}"} $$

        ## Synonyms

        - Sokal–Sneath 5 similarity

        ## Description

        The Gower 2 similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_HamannSimilarity = Hamann similarity
    .markdown =
        # Hamann similarity

        `Binary`

        $$ \frac{"{"}2|X \Delta Y|{"}"}{"{"}n{"}"} - 1 = \frac{"{"}n - 2|X \Delta Y|{"}"}{"{"}n{"}"} $$

        ## Description

        The Hamann similarity is a similarity on ${"{"}0, 1{"}"}^n$.

        ## References

        1. [Hamann, 1961](https://doi.org/10.1007/BF02047084 "Merkmalsbestand und Verwandtschaftsbeziehungen der Nematoden")

Math_Distances_DataAnalysis_ModelDistance = Model distance
    .markdown =
        # Model distance

        `Binary`

        $$ \sqrt{"{"}|X \setminus Y| + |Y \setminus X| - 2 \sum_j \sqrt{"{"}\lambda_j{"}"}{"}"} $$

        ## Synonyms

        - CMD-distance
        - canonical measure of distance

        ## Description

        Let $X, Y$ be two data sets, and let $\lambda_j$ be the eigenvalues of the symmetrized cross-correlation matrix $C\_{"{"}X \setminus Y, Y \setminus X{"}"} \times C\_{"{"}Y \setminus X, X \setminus Y{"}"}$. The model distance is a distance on ${"{"}0, 1{"}"}^n$. The {"*"}{"*"}CMD-distance{"*"}{"*"} is $\sqrt{"{"}|X| + |Y| - 2 \sum_j \sqrt{"{"}\lambda_j{"}"}{"}"}$, where $\lambda_j$ are the nonzero eigenvalues of the cross-correlation matrix $C\_{"{"}XY{"}"} \times C\_{"{"}YX{"}"}$.

        ## References

        1. [Todeschini, 2004](https://doi.org/10.1002/9783527613106 "Consensus Models in Chemistry")
        1. [Todeschini _et al._, 2009](https://doi.org/10.1002/minf.200900004 "CMD: A New Canonical Measure of Distance")

Math_Distances_DataAnalysis_MountfordSimilarity = Mountford similarity
    .markdown =
        # Mountford similarity

        `Binary`

        $$ \frac{"{"}2|X \cap Y|{"}"}{"{"}|X||Y \setminus X| + |Y||X \setminus Y|{"}"} $$

        ## Description

        The Mountford similarity is a similarity on ${"{"}0, 1{"}"}^n$.

        ## References

        1. [Mountford, 1962](https://doi.org/10.2307/2257441 "An Index of Similarity and its Application to Classificatory Problems")

Math_Distances_DataAnalysis_PatternDifference = Pattern difference
    .markdown =
        # Pattern difference

        `Binary`

        $$ \frac{"{"}4|X \setminus Y| \cdot |Y \setminus X|{"}"}{"{"}n^2{"}"} $$

        ## Description

        The pattern difference is a distance on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_PearsonPhiSimilarity = Pearson $\phi$ similarity
    .markdown =
        # Pearson $\phi$ similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}| - |X \setminus Y| \cdot |Y \setminus X|{"}"}{"{"}\sqrt{"{"}|X| \cdot |\overline{"{"}X{"}"}| \cdot |Y| \cdot |\overline{"{"}Y{"}"}|{"}"}{"}"} $$

        ## Description

        The Pearson $\phi$ similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_Q_0Difference = $Q_0$-difference
    .markdown =
        # $Q_0$-difference

        `Binary`

        $$ \frac{"{"}|X \setminus Y| \cdot |Y \setminus X|{"}"}{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}|{"}"} $$

        ## Description

        The $Q_0$-difference is a distance on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_RandSimilarity = Rand similarity
    .markdown =
        # Rand similarity

        `Binary`

        $$ 1 - \frac{"{"}|X \Delta Y|{"}"}{"{"}n{"}"} $$

        ## Synonyms

        - Sokal–Michener's simple matching

        ## Description

        The Rand similarity is a similarity on ${"{"}0, 1{"}"}^n$. Its square root is called the Euclidean similarity. The corresponding metric $\frac{"{"}|X \Delta Y|{"}"}{"{"}n{"}"}$ is called the variance or Manhattan similarity.

Math_Distances_DataAnalysis_RogerTanimotoSimilarity = Roger–Tanimoto similarity
    .markdown =
        # Roger–Tanimoto similarity

        `Binary`

        $$ \frac{"{"}|\overline{"{"}X \Delta Y{"}"}|{"}"}{"{"}n + |X \Delta Y|{"}"} $$

        ## Description

        The Roger–Tanimoto similarity is a similarity on ${"{"}0, 1{"}"}^n$.

        ## References

        1. [Rogers and Tanimoto, 1960](https://doi.org/10.1126/science.132.3434.1115 "A Computer Program for Classifying Plants")

Math_Distances_DataAnalysis_RusselRaoSimilarity = Russel–Rao similarity
    .markdown =
        # Russel–Rao similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y|{"}"}{"{"}n{"}"} $$

        ## Description

        The Russel–Rao similarity is a similarity on ${"{"}0, 1{"}"}^n$.

Math_Distances_DataAnalysis_SokalSneathSimilarities = Sokal–Sneath similarities
    .markdown =
        # Sokal–Sneath similarities

        `Binary`

        ## Description

        The Sokal–Sneath similarities 1, 2, 3 are similarities on ${"{"}0, 1{"}"}^n$ defined by $\frac{"{"}2|\overline{"{"}X \Delta Y{"}"}|{"}"}{"{"}n + |\overline{"{"}X \Delta Y{"}"}|{"}"}$, $\frac{"{"}|X \cap Y|{"}"}{"{"}|X \cup Y| + |X \Delta Y|{"}"}$, and $\frac{"{"}|\overline{"{"}X \Delta Y{"}"}|{"}"}{"{"}|X \Delta Y|{"}"}$.

Math_Distances_DataAnalysis_TverskySimilarity = Tversky similarity
    .markdown =
        # Tversky similarity

        `Binary`

        $$ \frac{"{"}|X \cap Y|{"}"}{"{"}a|X \Delta Y| + b|X \cap Y|{"}"} $$

        ## Description

        The Tversky similarity is a similarity on ${"{"}0, 1{"}"}^n$. It becomes the Tanimoto, Sørensen and Kulczynsky 1 similarities for $(a, b) = (1, 1)$, $(\frac{"{"}1{"}"}{"{"}2{"}"}, 1)$ and $(1, 0)$, respectively.

Math_Distances_DataAnalysis_YuleSimilarities = Yule similarities
    .markdown =
        # Yule similarities

        `Binary`

        ## Synonyms

        - Yule Q similarity
        - Yule Y similarity of colligation

        ## Description

        The {"*"}{"*"}Yule Q similarity{"*"}{"*"} is a similarity on ${"{"}0, 1{"}"}^n$ defined by $\frac{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}| - |X \setminus Y| \cdot |Y \setminus X|{"}"}{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}| + |X \setminus Y| \cdot |Y \setminus X|{"}"}$. The {"*"}{"*"}Yule Y similarity of colligation{"*"}{"*"} is defined by $\frac{"{"}\sqrt{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}|{"}"} - \sqrt{"{"}|X \setminus Y| \cdot |Y \setminus X|{"}"}{"}"}{"{"}\sqrt{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}|{"}"} + \sqrt{"{"}|X \setminus Y| \cdot |Y \setminus X|{"}"}{"}"}$.

        ## References

        1. [Yule, 1900](https://doi.org/10.1098/rsta.1900.0015 "On the Association of Attributes in Statistics")
        1. [Yule, 1912](https://doi.org/10.2307/2340126 "On the Methods of Measuring Association Between Two Attributes")

Math_Distances_DataAnalysis_CosineSimilarity = Cosine similarity
    .markdown =
        # Cosine similarity

        `Correlation`

        $$ \frac{"{"}\langle x, y \rangle{"}"}{"{"}||x||\_2 \cdot ||y||\_2{"}"} = \cos \phi $$

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

        The cosine similarity is the case $\bar{"{"}x{"}"} = \bar{"{"}y{"}"} = 0$ of the Pearson correlation similarity, where $\phi$ is the angle between vectors $x$ and $y$. In the binary case, it becomes $\frac{"{"}|X \cap Y|{"}"}{"{"}\sqrt{"{"}|X| \cdot |Y|{"}"}{"}"}$ and is called the {"*"}{"*"}Ochiai–Otsuka similarity{"*"}{"*"}. In Record Linkage, it is called {"*"}{"*"}TF-IDF similarity{"*"}{"*"}. The angular semimetric on $\mathbb{"{"}R{"}"}^n$ is defined by $\arccos \phi$. The {"*"}{"*"}cosine distance{"*"}{"*"} is $1 - \cos \phi$, and the {"*"}{"*"}Orloci distance{"*"}{"*"} is $\sqrt{"{"}2(1 - \cos \phi){"}"} = \sqrt{"{"}\sum (\frac{"{"}x_i{"}"}{"{"}||x||\_2{"}"} - \frac{"{"}y_i{"}"}{"{"}||y||\_2{"}"})^2{"}"}$.

Math_Distances_DataAnalysis_CovarianceSimilarity = Covariance similarity
    .markdown =
        # Covariance similarity

        `Correlation`

        $$ \frac{"{"}\sum (x_i - \bar{"{"}x{"}"})(y_i - \bar{"{"}y{"}"}){"}"}{"{"}n{"}"} = \frac{"{"}\sum x_i y_i{"}"}{"{"}n{"}"} - \bar{"{"}x{"}"} \cdot \bar{"{"}y{"}"} $$

        ## Description

        The covariance similarity is a similarity on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_GlobalCorrelationDistance = Global correlation distance
    .markdown =
        # Global correlation distance

        `Correlation`

        $$ I(d) = \frac{"{"}n \sum\_{"{"}1 \le i \neq j \le n{"}"} w\_{"{"}ij{"}"}(d) (x_i - \bar{"{"}x{"}"})(x_j - \bar{"{"}x{"}"}){"}"}{"{"}\sum\_{"{"}1 \le i \neq j \le n{"}"} w\_{"{"}ij{"}"}(d) \sum\_{"{"}1 \le i \le n{"}"} (x_i - \bar{"{"}x{"}"})^2{"}"} $$

        ## Synonyms

        - Moran autocorrelation coefficient

        ## Description

        Let $x \in \mathbb{"{"}R{"}"}^n$ and $(A, d)$ be a metric space with $n$ points $a_1, \dots, a_n$. For any $d > 0$, the Moran autocorrelation coefficient is defined by the formula above, where the weight $w\_{"{"}ij{"}"}(d)$ is $1$ if $d(a_i, a_j) = d$ and $0$, otherwise. The global correlation distance is the least value $d'$ for which $I(d) = 0$.

Math_Distances_DataAnalysis_LogLikelihoodDistance = Log-likelihood distance
    .markdown =
        # Log-likelihood distance

        `Correlation`

        $$ \sum\_{"{"}x \in A{"}"} x \log \frac{"{"}x{"}"}{"{"}|A|{"}"} + \sum\_{"{"}x \in B{"}"} x \log \frac{"{"}x{"}"}{"{"}|B|{"}"} - \sum\_{"{"}x \in A \cup B{"}"} x \log \frac{"{"}x{"}"}{"{"}|A \cup B|{"}"} $$

        ## Description

        Given two clusters $A$ and $B$, their log-likelihood distance is the decrease in log-likelihood as they are combined into one cluster.

Math_Distances_DataAnalysis_MorisitaHornSimilarity = Morisita–Horn similarity
    .markdown =
        # Morisita–Horn similarity

        `Correlation`

        $$ \frac{"{"}2 \langle x, y \rangle{"}"}{"{"}||x||\_2^2 \cdot \frac{"{"}\bar{"{"}y{"}"}{"}"}{"{"}\bar{"{"}x{"}"}{"}"} + ||y||\_2^2 \cdot \frac{"{"}\bar{"{"}x{"}"}{"}"}{"{"}\bar{"{"}y{"}"}{"}"}{"}"} $$

        ## Description

        The Morisita–Horn similarity is a similarity on $\mathbb{"{"}R{"}"}^n$.

        ## References

        1. [Morisita, 1959](https://www.jstage.jst.go.jp/article/memsci1950/3/1/3_1_65/_article "Measuring of interspecific association and similarity between communities")

Math_Distances_DataAnalysis_PearsonCorrelationSimilarity = Pearson correlation similarity
    .markdown =
        # Pearson correlation similarity

        `Correlation`

        $$ s = \frac{"{"}\sum (x_i - \bar{"{"}x{"}"})(y_i - \bar{"{"}y{"}"}){"}"}{"{"}\sqrt{"{"}\sum (x_j - \bar{"{"}x{"}"})^2 \sum (y_j - \bar{"{"}y{"}"})^2{"}"}{"}"} $$

        ## Synonyms

        - Pearson product-moment correlation coefficient
        - Pearson distance
        - correlation distance

        ## Description

        The Pearson correlation similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. The {"*"}{"*"}Pearson distance{"*"}{"*"} (or correlation distance) is defined by $1 - s = \frac{"{"}1{"}"}{"{"}2{"}"} \sum \left( \frac{"{"}x_i - \bar{"{"}x{"}"}{"}"}{"{"}\sqrt{"{"}\sum (x_j - \bar{"{"}x{"}"})^2{"}"}{"}"} - \frac{"{"}y_i - \bar{"{"}y{"}"}{"}"}{"{"}\sqrt{"{"}\sum (y_j - \bar{"{"}y{"}"})^2{"}"}{"}"} \right)^2$. A multivariate generalization is the RV coefficient $RV(X, Y) = \frac{"{"}Covv(X, Y){"}"}{"{"}\sqrt{"{"}Covv(X, X) Covv(Y, Y){"}"}{"}"}$.

        ## References

        1. [Escoufier, 1973](https://doi.org/10.2307/2529068 "Le Traitement des Variables Vectorielles")

Math_Distances_DataAnalysis_SimilarityRatio = Similarity ratio
    .markdown =
        # Similarity ratio

        `Correlation`

        $$ \frac{"{"}\langle x, y \rangle{"}"}{"{"}\langle x, y \rangle + ||x - y||\_2^2{"}"} $$

        ## Synonyms

        - Kohonen similarity
        - Kumar–Hassebrook similarity
        - Tanimoto similarity

        ## Description

        The similarity ratio is a similarity on $\mathbb{"{"}R{"}"}^n$. Its binary case is the Tanimoto similarity.

Math_Distances_DataAnalysis_SpearmanRankCorrelation = Spearman rank correlation
    .markdown =
        # Spearman rank correlation

        `Correlation`

        $$ \frac{"{"}\sum (a_i - \bar{"{"}a{"}"})(b_i - \bar{"{"}b{"}"}){"}"}{"{"}\sqrt{"{"}\sum (a_j - \bar{"{"}a{"}"})^2 \sum (b_j - \bar{"{"}b{"}"})^2{"}"}{"}"} = 1 - \frac{"{"}6{"}"}{"{"}n(n^2 - 1){"}"} \sum (a_i - b_i)^2 $$

        ## Synonyms

        - Spearman footrule
        - Kendall $\tau$ rank correlation

        ## Description

        If the sequences $x, y \in \mathbb{"{"}R{"}"}^n$ are ranked separately, then the Pearson correlation similarity is approximated by the Spearman $\rho$ rank correlation, where $n > 1$ and $a_i = \text{"{"}rank{"}"}(x_i)$, $b_i = \text{"{"}rank{"}"}(y_i)$. The {"*"}{"*"}Spearman footrule{"*"}{"*"} is defined by $1 - \frac{"{"}3{"}"}{"{"}n^2 - 1{"}"} \sum |x_i - y_i|$. Another correlation similarity for rankings is the {"*"}{"*"}Kendall $\tau$ rank correlation{"*"}{"*"}: $\frac{"{"}2 \sum\_{"{"}1 \le i \< j \le n{"}"} \text{"{"}sign{"}"}(x_i - x_j) \text{"{"}sign{"}"}(y_i - y_j){"}"}{"{"}n(n - 1){"}"}$.

Math_Distances_DataAnalysis_BaroniUrbaniBuserSimilarity = Baroni–Urbani–Buser similarity
    .markdown =
        # Baroni–Urbani–Buser similarity

        `Numerical`

        $$ \frac{"{"}\sum \min{"{"}x_i, y_i{"}"} + \sqrt{"{"}\sum \min{"{"}x_i, y_i{"}"} \sum (\max\_{"{"}1 \le j \le n{"}"} x_j - \max{"{"}x_i, y_i{"}"}){"}"}{"}"}{"{"}\sum \max{"{"}x_i, y_i{"}"} + \sqrt{"{"}\sum \min{"{"}x_i, y_i{"}"} \sum (\max\_{"{"}1 \le j \le n{"}"} x_j - \max{"{"}x_i, y_i{"}"}){"}"}{"}"} $$

        ## Description

        The Baroni–Urbani–Buser similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. In the binary case it takes the form $\frac{"{"}|X \cap Y| + \sqrt{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}|{"}"}{"}"}{"{"}|X \cup Y| + \sqrt{"{"}|X \cap Y| \cdot |\overline{"{"}X \cup Y{"}"}|{"}"}{"}"}$.

Math_Distances_DataAnalysis_BrayCurtisSimilarity = Bray–Curtis similarity
    .markdown =
        # Bray–Curtis similarity

        `Numerical`

        $$ \frac{"{"}2{"}"}{"{"}n(\bar{"{"}x{"}"} + \bar{"{"}y{"}"}){"}"} \sum \min{"{"}x_i, y_i{"}"} $$

        ## Synonyms

        - Renkonen percentage similarity

        ## Description

        The Bray–Curtis similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. It is called Renkonen percentage similarity if $x, y$ are frequency vectors.

        ## References

        1. [Bray and Curtis, 1957](https://doi.org/10.2307/1942268 "An Ordination of the Upland Forest Communities of Southern Wisconsin")

Math_Distances_DataAnalysis_CanberraDistance = Canberra distance
    .markdown =
        # Canberra distance

        `Numerical`

        $$ \sum \frac{"{"}|x_i - y_i|{"}"}{"{"}|x_i| + |y_i|{"}"} $$

        ## Description

        The Canberra distance is a distance on $\mathbb{"{"}R{"}"}^n$.

        ## References

        1. [Lance and Williams, 1967](https://doi.org/10.1093/comjnl/9.4.373 "A General Theory of Classificatory Sorting Strategies")

Math_Distances_DataAnalysis_CzekanowskyDiceDistance = Czekanowsky–Dice distance
    .markdown =
        # Czekanowsky–Dice distance

        `Numerical`

        $$ 1 - \frac{"{"}2|X \cap Y|{"}"}{"{"}|X| + |Y|{"}"} = \frac{"{"}|X \Delta Y|{"}"}{"{"}|X| + |Y|{"}"} $$

        ## Abbreviations

        - Bray–Curtis distance

        ## Synonyms

        - nonmetric coefficient

        ## Description

        The Czekanowsky–Dice distance is a near-metric on ${"{"}0, 1{"}"}^n$.

        ## References

        1. [Bray and Curtis, 1957](https://doi.org/10.2307/1942268 "An Ordination of the Upland Forest Communities of Southern Wisconsin")

Math_Distances_DataAnalysis_CzekanowskySimilarity = Czekanowsky similarity
    .markdown =
        # Czekanowsky similarity

        `Numerical`

        $$ \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"} $$

        ## Description

        The Czekanowsky similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Czekanowsky distance{"*"}{"*"} is defined by $1 - \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"} = \frac{"{"}\sum |x_i - y_i|{"}"}{"{"}\sum (x_i + y_i){"}"}$.

Math_Distances_DataAnalysis_DiceSimilarity = Dice similarity
    .markdown =
        # Dice similarity

        `Numerical`

        $$ \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum x_i^2 + \sum y_i^2{"}"} $$

        ## Description

        The Dice similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Dice distance{"*"}{"*"} is defined by $1 - \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum x_i^2 + \sum y_i^2{"}"} = \frac{"{"}\sum |x_i - y_i|{"}"}{"{"}\sum x_i^2 + \sum y_i^2{"}"}$.

Math_Distances_DataAnalysis_EllenbergSimilarity = Ellenberg similarity
    .markdown =
        # Ellenberg similarity

        `Numerical`

        $$ \frac{"{"}\sum (x_i + y_i) 1\_{"{"}x_i y_i \neq 0{"}"}{"}"}{"{"}\sum (x_i + y_i) (1 + 1\_{"{"}x_i y_i = 0{"}"}){"}"} $$

        ## Description

        The Ellenberg similarity is a similarity on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_GleasonSimilarity = Gleason similarity
    .markdown =
        # Gleason similarity

        `Numerical`

        $$ \frac{"{"}\sum (x_i + y_i) 1\_{"{"}x_i y_i \neq 0{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"} $$

        ## Description

        The Gleason similarity is a similarity on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_IntersectionDistance = Intersection distance
    .markdown =
        # Intersection distance

        `Numerical`

        $$ 1 - \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\min{"{"}\sum x_i, \sum y_i{"}"}{"}"} $$

        ## Description

        The intersection distance is a distance on $\mathbb{"{"}R{"}"}^n$. It becomes $\frac{"{"}1{"}"}{"{"}2{"}"} \sum |x_i - y_i|$ if $x, y$ are frequency vectors.

Math_Distances_DataAnalysis_JaccardSimilarity = Jaccard similarity
    .markdown =
        # Jaccard similarity

        `Numerical`

        $$ \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum x_i^2 + \sum y_i^2 - \sum x_i y_i{"}"} $$

        ## Synonyms

        - Tanimoto similarity
        - Tanimoto distance
        - biotope distance

        ## Description

        The Jaccard similarity of community is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Jaccard distance{"*"}{"*"} is defined by $1 - \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum x_i^2 + \sum y_i^2 - \sum x_i y_i{"}"} = \frac{"{"}\sum (x_i - y_i)^2{"}"}{"{"}\sum x_i^2 + \sum y_i^2 - \sum x_i y_i{"}"}$. The binary cases of Jaccard, Ellenberg and Ruzicka similarities coincide; it is called {"*"}{"*"}Tanimoto similarity{"*"}{"*"}: $\frac{"{"}|X \cap Y|{"}"}{"{"}|X \cup Y|{"}"}$. The {"*"}{"*"}Tanimoto distance{"*"}{"*"} (or biotope distance) is a distance on ${"{"}0, 1{"}"}^n$ defined by $1 - \frac{"{"}|X \cap Y|{"}"}{"{"}|X \cup Y|{"}"} = \frac{"{"}|X \Delta Y|{"}"}{"{"}|X \cup Y|{"}"}$.

        ## References

        1. [Jaccard, 1908](https://doi.org/10.1007/BF01611216 "Nouvelles recherches sur la distribution florale")

Math_Distances_DataAnalysis_KulczynskiSimilarity_1 = Kulczynski similarity 1
    .markdown =
        # Kulczynski similarity 1

        `Numerical`

        $$ \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum |x_i - y_i|{"}"} $$

        ## Description

        The Kulczynski similarity 1 is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Kulczynski distance{"*"}{"*"} is $\frac{"{"}\sum |x_i - y_i|{"}"}{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}$.

Math_Distances_DataAnalysis_KulczynskiSimilarity_2 = Kulczynski similarity 2
    .markdown =
        # Kulczynski similarity 2

        `Numerical`

        $$ \frac{"{"}n{"}"}{"{"}2{"}"} \left( \frac{"{"}1{"}"}{"{"}\bar{"{"}x{"}"}{"}"} + \frac{"{"}1{"}"}{"{"}\bar{"{"}y{"}"}{"}"} \right) \sum \min{"{"}x_i, y_i{"}"} $$

        ## Description

        The Kulczynski similarity 2 is a similarity on $\mathbb{"{"}R{"}"}^n$. In the binary case it coincides with Maryland bridge similarity; its form is $\frac{"{"}|X \cap Y| \cdot (|X| + |Y|){"}"}{"{"}2|X| \cdot |Y|{"}"} = \frac{"{"}|X \cap Y|{"}"}{"{"}2|X|{"}"} + \frac{"{"}|X \cap Y|{"}"}{"{"}2|Y|{"}"}$.

Math_Distances_DataAnalysis_MarylandBridgeSimilarity = Maryland Bridge similarity
    .markdown =
        # Maryland Bridge similarity

        `Numerical`

        $$ \frac{"{"}1{"}"}{"{"}2{"}"} \left( \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum x_i^2{"}"} + \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum y_i^2{"}"} \right) $$

        ## Description

        The Maryland Bridge similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Maryland Bridge distance{"*"}{"*"} is defined by $1 - \frac{"{"}1{"}"}{"{"}2{"}"} \left( \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum x_i^2{"}"} + \frac{"{"}\sum x_i y_i{"}"}{"{"}\sum y_i^2{"}"} \right)$.

        ## References

        1. [Mirkin and Koonin, 2003](https://doi.org/10.1186/1471-2105-4-2 "A top-down method for building genome classification trees with linear binary hierarchies")

Math_Distances_DataAnalysis_MotykaSimilarity = Motyka similarity
    .markdown =
        # Motyka similarity

        `Numerical`

        $$ \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"} = n \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\bar{"{"}x{"}"} + \bar{"{"}y{"}"}{"}"} $$

        ## Description

        The Motyka similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Motyka distance{"*"}{"*"} is $1 - \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"} = \frac{"{"}\sum \max{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"}$.

Math_Distances_DataAnalysis_RobertsSimilarity = Roberts similarity
    .markdown =
        # Roberts similarity

        `Numerical`

        $$ \frac{"{"}\sum (x_i + y_i) \frac{"{"}\min{"{"}x_i, y_i{"}"}{"}"}{"{"}\max{"{"}x_i, y_i{"}"}{"}"}{"}"}{"{"}\sum (x_i + y_i){"}"} $$

        ## Description

        The Roberts similarity is a similarity on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_RuzickaSimilarity = Ruzicka similarity
    .markdown =
        # Ruzicka similarity

        `Numerical`

        $$ \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum \max{"{"}x_i, y_i{"}"}{"}"} $$

        ## Synonyms

        - Soergel distance
        - Wave–Edges distance

        ## Description

        The Ruzicka similarity is a similarity on $\mathbb{"{"}R{"}"}^n$. The corresponding {"*"}{"*"}Soergel distance{"*"}{"*"} is defined as $1 - \frac{"{"}\sum \min{"{"}x_i, y_i{"}"}{"}"}{"{"}\sum \max{"{"}x_i, y_i{"}"}{"}"} = \frac{"{"}\sum |x_i - y_i|{"}"}{"{"}\sum \max{"{"}x_i, y_i{"}"}{"}"}$. It coincides on $\mathbb{"{"}R{"}"}\_{"{"}\ge 0{"}"}^n$ with the fuzzy polynucleotide metric. The {"*"}{"*"}Wave–Edges distance{"*"}{"*"} is defined by $\sum \left(1 - \frac{"{"}\min{"{"}x_i, y_i{"}"}{"}"}{"{"}\max{"{"}x_i, y_i{"}"}{"}"}\right) = \sum \frac{"{"}|x_i - y_i|{"}"}{"{"}\max{"{"}x_i, y_i{"}"}{"}"}$.

Math_Distances_DataAnalysis_SimpsonSimilarity = Simpson similarity
    .markdown =
        # Simpson similarity

        `Numerical`

        $$ \frac{"{"}\sum x_i y_i{"}"}{"{"}\min{"{"}\sum x_i, \sum y_i{"}"}{"}"} $$

        ## Synonyms

        - overlap similarity

        ## Description

        The Simpson similarity is a similarity on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_S_rensenDistance = Sørensen distance
    .markdown =
        # Sørensen distance

        `Numerical`

        $$ 1 - \frac{"{"}2{"}"}{"{"}n(\bar{"{"}x{"}"} + \bar{"{"}y{"}"}){"}"} \sum \min{"{"}x_i, y_i{"}"} = \frac{"{"}\sum |x_i - y_i|{"}"}{"{"}\sum (x_i + y_i){"}"} $$

        ## Synonyms

        - Bray–Curtis distance
        - Sørensen similarity

        ## Description

        The Sørensen distance is defined on $\mathbb{"{"}R{"}"}^n$. The binary cases of Bray–Curtis, Cleason, Czekanowsky and Dice similarities coincide; it is called {"*"}{"*"}Sørensen similarity{"*"}{"*"}: $\frac{"{"}2|X \cap Y|{"}"}{"{"}|X \cup Y| + |X \cap Y|{"}"} = \frac{"{"}2|X \cap Y|{"}"}{"{"}|X| + |Y|{"}"}$.

        ## References

        1. [Sørensen, 1948](https://www.semanticscholar.org/paper/A-method-of-establishing-groups-of-equal-amplitude-S%C3%B8rensen/ "A method of establishing groups of equal amplitude in plant sociology based on similarity of species content")

Math_Distances_DataAnalysis_BinaryEuclideanDistance = Binary Euclidean distance
    .markdown =
        # Binary Euclidean distance

        `Relatives`

        $$ \sqrt{"{"}\sum (1\_{"{"}x_i > 0{"}"} - 1\_{"{"}y_i > 0{"}"})^2{"}"} $$

        ## Description

        The binary Euclidean distance is a distance on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_ClarkDistance = Clark distance
    .markdown =
        # Clark distance

        `Relatives`

        $$ \left( \frac{"{"}1{"}"}{"{"}n{"}"} \sum \left( \frac{"{"}x_i - y_i{"}"}{"{"}|x_i| + |y_i|{"}"} \right)^2 \right)^{"{"}\frac{"{"}1{"}"}{"{"}2{"}"}{"}"} $$

        ## Description

        The Clark distance is a distance on $\mathbb{"{"}R{"}"}^n$.

        ## References

        1. [Clark, 1952](https://doi.org/10.2307/1931022 "An extension of the coefficient of divergence for use with multiple characters")

Math_Distances_DataAnalysis_EffectSize = Effect size
    .markdown =
        # Effect size

        `Relatives`

        $$ \frac{"{"}\bar{"{"}x{"}"} - \bar{"{"}y{"}"}{"}"}{"{"}s{"}"} $$

        ## Synonyms

        - statistical distance
        - standard distance

        ## Description

        Let $\bar{"{"}x{"}"}, \bar{"{"}y{"}"}$ be the means of samples $x, y$ and let $s^2$ be the pooled variance of both samples. The effect size is defined by the formula above. Its symmetric version $\frac{"{"}|\bar{"{"}x{"}"} - \bar{"{"}y{"}"}|{"}"}{"{"}s{"}"}$ is called statistical distance or standard distance.

        ## References

        1. [Johnson and Wichern, 1982](https://www.pearson.com/us/higher-education/program/Johnson-Applied-Multivariate-Statistical-Analysis-6th-Edition/PGM249031.html "Applied Multivariate Statistical Analysis")
        1. [Flury and Riedwyl, 1986](https://doi.org/10.1080/01621459.1986.10478263 "Standard Distance in Statistics")

Math_Distances_DataAnalysis_HellingerDistance = Hellinger distance
    .markdown =
        # Hellinger distance

        `Relatives`

        $$ \sqrt{"{"}2 \sum \left( \sqrt{"{"}\frac{"{"}x_i{"}"}{"{"}\bar{"{"}x{"}"}{"}"}{"}"} - \sqrt{"{"}\frac{"{"}y_i{"}"}{"{"}\bar{"{"}y{"}"}{"}"}{"}"} \right)^2{"}"} $$

        ## Synonyms

        - Whittaker index of association

        ## Description

        The Hellinger distance is a distance on $\mathbb{"{"}R{"}"}\_+^n$. The {"*"}{"*"}Whittaker index of association{"*"}{"*"} is defined by $\frac{"{"}1{"}"}{"{"}2{"}"} \sum |\frac{"{"}x_i{"}"}{"{"}\bar{"{"}x{"}"}{"}"} - \frac{"{"}y_i{"}"}{"{"}\bar{"{"}y{"}"}{"}"}|$.

Math_Distances_DataAnalysis_LorentzianDistance = Lorentzian distance
    .markdown =
        # Lorentzian distance

        `Relatives`

        $$ \sum \ln(1 + |x_i - y_i|) $$

        ## Description

        The Lorentzian distance is a distance on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_MahalanobisDistance = Mahalanobis distance
    .markdown =
        # Mahalanobis distance

        `Relatives`

        $$ ||x - y||\_A = \sqrt{"{"}(x - y) A (x - y)^T{"}"} $$

        ## Synonyms

        - quadratic distance
        - directionally weighted distance
        - standardized Euclidean distance
        - normalized Euclidean distance
        - scaled Euclidean distance

        ## Description

        The Mahalanobis distance is a semimetric on $\mathbb{"{"}R{"}"}^n$, where $A$ is a positive-semidefinite matrix. It is a metric if $A$ is positive-definite. Usually, $A = C^{"{"}-1{"}"}$, where $C$ is a covariance matrix. If $C$ is a diagonal matrix, then $c\_{"{"}ii{"}"} = Var(x_i) = Var(y_i) = \sigma_i^2$ and it holds $||x - y||\_{"{"}C^{"{"}-1{"}"}{"}"} = \sqrt{"{"}\sum_i \frac{"{"}(x_i - y_i)^2{"}"}{"{"}\sigma_i^2{"}"}{"}"}$, which is called the {"*"}{"*"}standardized Euclidean distance{"*"}{"*"}. The {"*"}{"*"}maximum scaled difference{"*"}{"*"} is defined by $\max_i \frac{"{"}(x_i - y_i)^2{"}"}{"{"}\sigma_i^2{"}"}$.

        ## References

        1. [Mahalanobis, 1936](https://www.semanticscholar.org/paper/On-the-generalised-distance-in-statistics-Mahalanobis/ "On the generalised distance in statistics")
        1. [Maxwell and Buddemeier, 2002](https://doi.org/10.1007/s00442-002-0917-4 "Maximum scaled difference")

Math_Distances_DataAnalysis_MeanCensoredEuclideanDistance = Mean censored Euclidean distance
    .markdown =
        # Mean censored Euclidean distance

        `Relatives`

        $$ \sqrt{"{"}\frac{"{"}\sum (x_i - y_i)^2{"}"}{"{"}\sum 1\_{"{"}x_i^2 + y_i^2 \neq 0{"}"}{"}"}{"}"} $$

        ## Description

        The mean censored Euclidean distance is a distance on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_MeehlDistance = Meehl distance
    .markdown =
        # Meehl distance

        `Relatives`

        $$ \sum\_{"{"}1 \le i \le n-1{"}"} (x_i - y_i - x\_{"{"}i+1{"}"} + y\_{"{"}i+1{"}"})^2 $$

        ## Synonyms

        - Meehl index

        ## Description

        The Meehl distance is a distance on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_MultiplicativeDistance = Multiplicative distance
    .markdown =
        # Multiplicative distance

        `Relatives`

        $$ d\_{"{"}MK{"}"}(x, y) = -1 + \prod\_{"{"}i=1{"}"}^n (1 + |x_i - y_i|)^{"{"}c_i{"}"} $$

        ## Description

        The multiplicative distance is defined for any $x, y \in \mathbb{"{"}R{"}"}^n$, where $c_1, \dots, c_n$ are given positive numbers. Another multiplicative distance for $x, y \in \mathbb{"{"}N{"}"}^n$ is $d_Q(x, y) = \sum\_{"{"}i=1{"}"}^n ||l(x_i) - l(y_i)||\_1$.

        ## References

        1. [Mansouri and Khademi, 2014](https://doi.org/10.1016/j.patrec.2014.04.016 "A new multiplicative distance metric for high-dimensional data")
        1. [Qureshi, 2015](https://doi.org/10.1016/j.patrec.2015.03.011 "A novel multiplicative distance metric for numerical data")

Math_Distances_DataAnalysis_NormalizedLpDistance = Normalized lp-distance
    .markdown =
        # Normalized lp-distance

        `Relatives`

        $$ \frac{"{"}||x - y||\_p{"}"}{"{"}||x||\_p + ||y||\_p{"}"} $$

        ## Description

        The normalized $l_p$-distance, $1 \le p \le \infty$, is a distance on $\mathbb{"{"}R{"}"}^n$. The only integer value $p$ for which it is a metric is $p=2$.

Math_Distances_DataAnalysis_PenroseSizeAndShapeDistances = Penrose size and shape distances
    .markdown =
        # Penrose size and shape distances

        `Relatives`

        $$ \sqrt{"{"}n{"}"} \sum |x_i - y_i| \quad \text{"{"}and{"}"} \quad \sqrt{"{"}\sum ((x_i - \bar{"{"}x{"}"}) - (y_i - \bar{"{"}y{"}"}))^2{"}"} $$

        ## Synonyms

        - mean character distance

        ## Description

        The Penrose size distance and Penrose shape distance are distances on $\mathbb{"{"}R{"}"}^n$. The sum of their squares is the squared Euclidean distance. The {"*"}{"*"}mean character distance{"*"}{"*"} is defined by $\frac{"{"}\sum |x_i - y_i|{"}"}{"{"}n{"}"}$.

        ## References

        1. [Czekanowsky, 1909](https://www.semanticscholar.org/paper/Zur-Differentialdiagnose-der-Neandertalgruppe-Czekanowski/ "Zur Differentialdiagnose der Neandertalgruppe")

Math_Distances_DataAnalysis_PowerPRDistance = Power (p, r)-distance
    .markdown =
        # Power (p, r)-distance

        `Relatives`

        $$ \left( \sum\_{"{"}i=1{"}"}^n |x_i - y_i|^p \right)^{"{"}\frac{"{"}1{"}"}{"{"}r{"}"}{"}"} $$

        ## Synonyms

        - fractional $l_p$-distance

        ## Description

        The power $(p, r)$-distance is a distance on $\mathbb{"{"}R{"}"}^n$. For $p = r \ge 1$, it is the $l_p$-metric, including the Euclidean, Manhattan and Chebyshev metrics. The case $(p, r) = (2, 1)$ corresponds to the squared Euclidean distance. The power $(p, r)$-distance with $0 \< p = r \< 1$ is called the {"*"}{"*"}fractional $l_p$-distance{"*"}{"*"}. The {"*"}{"*"}ordinal distance{"*"}{"*"} on $\mathbb{"{"}R{"}"}^n$ is defined by $\left( \sum\_{"{"}i=1{"}"}^n |\sum\_{"{"}1 \le j \le i{"}"} (x_j - y_j)|^p \right)^{"{"}\frac{"{"}1{"}"}{"{"}p{"}"}{"}"}$.

Math_Distances_DataAnalysis_SymmetricChi_2Distance = Symmetric $\chi^2$-distance
    .markdown =
        # Symmetric $\chi^2$-distance

        `Relatives`

        $$ \sqrt{"{"}\sum \frac{"{"}\bar{"{"}x{"}"} + \bar{"{"}y{"}"}{"}"}{"{"}n(x_i + y_i){"}"} \left( \frac{"{"}x_i{"}"}{"{"}\bar{"{"}x{"}"}{"}"} - \frac{"{"}y_i{"}"}{"{"}\bar{"{"}y{"}"}{"}"} \right)^2{"}"} = \sqrt{"{"}\sum \frac{"{"}\bar{"{"}x{"}"} + \bar{"{"}y{"}"}{"}"}{"{"}n(\bar{"{"}x{"}"} \cdot \bar{"{"}y{"}"})^2{"}"} \frac{"{"}(x_i \bar{"{"}y{"}"} - y_i \bar{"{"}x{"}"})^2{"}"}{"{"}x_i + y_i{"}"}{"}"} $$

        ## Synonyms

        - chi-distance

        ## Description

        The symmetric $\chi^2$-distance is a distance on $\mathbb{"{"}R{"}"}^n$. It is a weighted Euclidean distance.

Math_Distances_DataAnalysis_SymmetricChi_2Measure = Symmetric $\chi^2$-measure
    .markdown =
        # Symmetric $\chi^2$-measure

        `Relatives`

        $$ \sum \frac{"{"}2{"}"}{"{"}\bar{"{"}x{"}"} \cdot \bar{"{"}y{"}"}{"}"} \frac{"{"}(x_i \bar{"{"}y{"}"} - y_i \bar{"{"}x{"}"})^2{"}"}{"{"}x_i + y_i{"}"} $$

        ## Description

        The symmetric $\chi^2$-measure is a distance on $\mathbb{"{"}R{"}"}^n$.

Math_Distances_DataAnalysis_WeightedEuclideanDistance = Weighted Euclidean distance
    .markdown =
        # Weighted Euclidean distance

        `Relatives`

        $$ \sqrt{"{"}(x - y)^T A (x - y){"}"} $$

        ## Description

        The general quadratic-form distance on $\mathbb{"{"}R{"}"}^n$ is defined by the formula above, where $A$ is a real nonsingular symmetric $n \times n$ matrix. The weighted Euclidean distance is the case $A = \text{"{"}diag{"}"}(a_i)$, $a_i \neq 0$, i.e., it is $\sqrt{"{"}\sum a_i(x_i - y_i)^2{"}"}$.

Math_Distances_DataAnalysis_YjhhrMetrics = YJHHR metrics
    .markdown =
        # YJHHR metrics

        `Relatives`

        $$ d(X, Y) = (|X \setminus Y|^p + |Y \setminus X|^p)^{"{"}\frac{"{"}1{"}"}{"{"}p{"}"}{"}"} $$

        ## Description

        The YJHHR metrics are defined for any $p \ge 1$ and two finite sets $X, Y$. Another variant is $d'(X, Y) = \frac{"{"}d(X, Y){"}"}{"{"}|X \cup Y|{"}"}$ if $|X \cup Y| > 0$, and $0$ otherwise.

        ## References

        1. [Yang _et al._, 2016](https://doi.org/10.1093/bioinformatics/btw318 "A distance metric for sets of biological sequences")

