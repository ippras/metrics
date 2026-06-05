use const_format::formatcp;

pub const PREFIX: &str = "Metrics";

pub const DISTANCES: &str = "Distances";
pub const DATA_ANALYSIS: &str = "DataAnalysis";

pub mod distances {
    use super::*;

    pub const DATA_ANALYSIS: &str = formatcp!("{PREFIX}_{DISTANCES}_DataAnalysis");

    #[rustfmt::skip]
    pub mod data_analysis {
        use super::*;
    
        pub const ANDERBERG_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_AnderbergSimilarity");
        pub const BRAUN_BLANQUET_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_BraunBlanquetSimilarity");
        pub const DISPERSION_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_DispersionSimilarity");
        pub const FAITH_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_FaithSimilarity");
        pub const FORBES_MOZLEY_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_ForbesMozleySimilarity");
        pub const GOWER_LEGENDRE_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_GowerLegendreSimilarity");
        pub const GOWER_SIMILARITY_2: &str = formatcp!("{DATA_ANALYSIS}_GowerSimilarity_2");
        pub const HAMANN_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_HamannSimilarity");
        pub const MODEL_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_ModelDistance");
        pub const MOUNTFORD_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_MountfordSimilarity");
        pub const PATTERN_DIFFERENCE: &str = formatcp!("{DATA_ANALYSIS}_PatternDifference");
        pub const PEARSON_PHI_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_PearsonPhiSimilarity");
        pub const Q_0_DIFFERENCE: &str = formatcp!("{DATA_ANALYSIS}_Q_0Difference");
        pub const RAND_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_RandSimilarity");
        pub const ROGER_TANIMOTO_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_RogerTanimotoSimilarity");
        pub const RUSSEL_RAO_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_RusselRaoSimilarity");
        pub const SOKAL_SNEATH_SIMILARITIES: &str = formatcp!("{DATA_ANALYSIS}_SokalSneathSimilarities");
        pub const TVERSKY_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_TverskySimilarity");
        pub const YULE_SIMILARITIES: &str = formatcp!("{DATA_ANALYSIS}_YuleSimilarities");
        pub const COSINE_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_CosineSimilarity");
        pub const COVARIANCE_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_CovarianceSimilarity");
        pub const GLOBAL_CORRELATION_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_GlobalCorrelationDistance");
        pub const LOG_LIKELIHOOD_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_LogLikelihoodDistance");
        pub const MORISITA_HORN_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_MorisitaHornSimilarity");
        pub const PEARSON_CORRELATION_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_PearsonCorrelationSimilarity");
        pub const SIMILARITY_RATIO: &str = formatcp!("{DATA_ANALYSIS}_SimilarityRatio");
        pub const SPEARMAN_RANK_CORRELATION: &str = formatcp!("{DATA_ANALYSIS}_SpearmanRankCorrelation");
        pub const BARONI_URBANI_BUSER_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_BaroniUrbaniBuserSimilarity");
        pub const BRAY_CURTIS_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_BrayCurtisSimilarity");
        pub const CANBERRA_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_CanberraDistance");
        pub const CZEKANOWSKY_DICE_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_CzekanowskyDiceDistance");
        pub const CZEKANOWSKY_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_CzekanowskySimilarity");
        pub const DICE_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_DiceSimilarity");
        pub const ELLENBERG_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_EllenbergSimilarity");
        pub const GLEASON_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_GleasonSimilarity");
        pub const INTERSECTION_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_IntersectionDistance");
        pub const JACCARD_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_JaccardSimilarity");
        pub const KULCZYNSKI_SIMILARITY_1: &str = formatcp!("{DATA_ANALYSIS}_KulczynskiSimilarity_1");
        pub const KULCZYNSKI_SIMILARITY_2: &str = formatcp!("{DATA_ANALYSIS}_KulczynskiSimilarity_2");
        pub const MARYLAND_BRIDGE_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_MarylandBridgeSimilarity");
        pub const MOTYKA_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_MotykaSimilarity");
        pub const ROBERTS_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_RobertsSimilarity");
        pub const RUZICKA_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_RuzickaSimilarity");
        pub const SIMPSON_SIMILARITY: &str = formatcp!("{DATA_ANALYSIS}_SimpsonSimilarity");
        pub const S_RENSEN_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_S_rensenDistance");
        pub const BINARY_EUCLIDEAN_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_BinaryEuclideanDistance");
        pub const CLARK_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_ClarkDistance");
        pub const EFFECT_SIZE: &str = formatcp!("{DATA_ANALYSIS}_EffectSize");
        pub const HELLINGER_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_HellingerDistance");
        pub const LORENTZIAN_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_LorentzianDistance");
        pub const MAHALANOBIS_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_MahalanobisDistance");
        pub const MEAN_CENSORED_EUCLIDEAN_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_MeanCensoredEuclideanDistance");
        pub const MEEHL_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_MeehlDistance");
        pub const MULTIPLICATIVE_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_MultiplicativeDistance");
        pub const NORMALIZED_LP_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_NormalizedLpDistance");
        pub const PENROSE_SIZE_AND_SHAPE_DISTANCES: &str = formatcp!("{DATA_ANALYSIS}_PenroseSizeAndShapeDistances");
        pub const POWER_PR_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_PowerPRDistance");
        pub const SYMMETRIC_CHI_2_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_SymmetricChi_2Distance");
        pub const SYMMETRIC_CHI_2_MEASURE: &str = formatcp!("{DATA_ANALYSIS}_SymmetricChi_2Measure");
        pub const WEIGHTED_EUCLIDEAN_DISTANCE: &str = formatcp!("{DATA_ANALYSIS}_WeightedEuclideanDistance");
        pub const YJHHR_METRICS: &str = formatcp!("{DATA_ANALYSIS}_YjhhrMetrics");
    }
}
