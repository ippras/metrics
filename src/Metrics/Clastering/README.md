# Clastering metrics

| #   | Abbreviations | Fullname                                  | Characteristics   | Best          | Min  | Max  |
| --- | ------------- | ----------------------------------------- | ----------------- | ------------- | ---- | ---- |
| 22  | ARS           | Adjusted Rand Score                       | Bigger is better  | 1             | -1   | 1    |
| 1   | BHI           | Ball Hall Index                           | Smaller is better | 0             | 0    | +inf |
| 4   | BRI           | Banfeld Raftery Index                     | Smaller is better | No best value | -inf | +inf |
| 15  | BI            | Beale Index                               | Smaller is better | 0             | 0    | +inf |
| 8   | CHI           | Calinski Harabasz Index                   | Bigger is better  | No best value | 0    | +inf |
| 25  | CS            | Completeness Score                        | Bigger is better  | 1             | 0    | 1    |
| 30  | CDS           | Czekanowski Dice Score                    | Bigger is better  | 1             | 0    | 1    |
| 3   | DBI           | Davies Bouldin Index                      | Smaller is better | 0             | 0    | +inf |
| 17  | DBCVI         | Density-based Clustering Validation Index | Bigger is better  | 0             | 0    | 1    |
| 6   | DRI           | Det Ratio Index                           | Bigger is better  | No best value | 0    | +inf |
| 14  | DHI           | Duda-Hart Index                           | Smaller is better | 0             | 0    | +inf |
| 7   | DI            | Dunn Index                                | Bigger is better  | No best value | 0    | +inf |
| 41  | ES            | Entropy Score                             | Smaller is better | 0             | 0    | +inf |
| 29  | FmS           | F-Measure Score                           | Bigger is better  | 1             | 0    | 1    |
| 23  | FMS           | Fowlkes Mallows Score                     | Bigger is better  | 1             | 0    | 1    |
| 43  | GAS           | Gamma Score                               | Bigger is better  | 1             | -1   | 1    |
| 44  | GPS           | Gplus Score                               | Smaller is better | 0             | 0    | 1    |
| 18  | HI            | Hartigan Index                            | Bigger is better  | 0             | 0    | +inf |
| 24  | HS            | Homogeneity Score                         | Bigger is better  | 1             | 0    | 1    |
| 31  | HGS           | Hubert Gamma Score                        | Bigger is better  | 1             | -1   | 1    |
| 32  | JS            | Jaccard Score                             | Bigger is better  | 1             | 0    | 1    |
| 5   | KDI           | Ksq Detw Index                            | Smaller is better | No best value | -inf | +inf |
| 33  | KS            | Kulczynski Score                          | Bigger is better  | 1             | 0    | 1    |
| 9   | LDRI          | Log Det Ratio Index                       | Bigger is better  | No best value | -inf | +inf |
| 10  | LSRI          | Log SS Ratio Index                        | Bigger is better  | No best value | -inf | +inf |
| 34  | MNS           | Mc Nemar Score                            | Bigger is better  | No best value | -inf | +inf |
| 13  | MSEI          | Mean Squared Error Index                  | Smaller is better | 0             | 0    | +inf |
| 19  | MIS           | Mutual Info Score                         | Bigger is better  | No best value | 0    | +inf |
| 20  | NMIS          | Normalized Mutual Info Score              | Bigger is better  | 1             | 0    | 1    |
| 35  | PhS           | Phi Score                                 | Bigger is better  | No best value | -inf | +inf |
| 27  | PrS           | Precision Score                           | Bigger is better  | 1             | 0    | 1    |
| 40  | PuS           | Purity Score                              | Bigger is better  | 1             | 0    | 1    |
| 16  | RSI           | R-squared Index                           | Bigger is better  | 1             | -inf | 1    |
| 21  | RaS           | Rand Score                                | Bigger is better  | 1             | 0    | 1    |
| 28  | ReS           | Recall Score                              | Bigger is better  | 1             | 0    | 1    |
| 36  | RTS           | Rogers Tanimoto Score                     | Bigger is better  | 1             | 0    | 1    |
| 37  | RRS           | Russel Rao Score                          | Bigger is better  | 1             | 0    | 1    |
| 11  | SI            | Silhouette Index                          | Bigger is better  | 1             | -1   | 1    |
| 38  | SS1S          | Sokal Sneath1 Score                       | Bigger is better  | 1             | 0    | 1    |
| 39  | SS2S          | Sokal Sneath2 Score                       | Bigger is better  | 1             | 0    | 1    |
| 12  | SSEI          | Sum of Squared Error Index                | Smaller is better | 0             | 0    | +inf |
| 42  | TS            | Tau Score                                 | Bigger is better  | No best value | -inf | +inf |
| 26  | VMS           | V-Measure Score                           | Bigger is better  | 1             | 0    | 1    |
| 2   | XBI           | Xie Beni Index                            | Smaller is better | 0             | 0    | +inf |

Главное отличие между внутренними и внешними критериями (индексами) кластеризации заключается в их цели и в том, какую информацию они используют для расчетов.

### 1. Внутренние критерии (Internal clustering criteria)

*   **Цель:** Оценить *качество* самого разбиения данных на кластеры без использования какой-либо внешней информации или эталонных ответов.
*   **Используемые данные:** Они используют **сами исходные данные** (координаты точек, расстояния между ними, дисперсию, барицентры/центроиды). Как правило, они оценивают два аспекта:
    *   *Компактность (внутригрупповой разброс):* насколько близко друг к другу находятся точки внутри одного кластера.
    *   *Разделимость (межгрупповой разброс):* насколько далеко друг от друга находятся разные кластеры.
*   **Главное применение:** Поиск оптимального количества кластеров ($K$) или выбор наилучшего алгоритма кластеризации для набора данных, где истинные метки неизвестны (например, с помощью «правила локтя», максимизации или минимизации индекса).
*   **Примеры из текста:** Индекс силуэта (Silhouette), индекс Данна (Dunn), индекс Дэвиса-Болдина (Davies-Bouldin), индекс Калински-Харабаша (Calinski-Harabasz) и др.

### 2. Внешние критерии (External comparison indices)

*   **Цель:** Измерить *степень сходства (совпадения)* между **двумя** различными разбиениями (партициями) одних и тех же данных.
*   **Используемые данные:** Они учитывают **только распределение точек по кластерам** (то есть сами метки кластеров) и *полностью игнорируют исходные данные* (координаты и расстояния между точками). Они не могут измерить качество самого распределения в пространстве. Расчеты строятся на матрице ошибок (confusion matrix) — подсчете пар точек, которые попали в один или разные кластеры в первом и во втором разбиении (конкордантные и дискордантные пары).
*   **Главное применение:** Сравнение результата кластеризации с известным «эталоном» (истинными метками классов, как в примере с набором данных IRIS, где алгоритм сравнивался с реальными видами растений) или сравнение результатов двух разных алгоритмов между собой.
*   **Примеры из текста:** Индекс Рэнда (Rand), индекс Жаккара (Jaccard), коэффициенты точности и полноты (Precision / Recall / F-мера), индекс Фолкса-Мэллоуса (Folkes-Mallows) и др.

**Краткий итог:**
*   **Внутренние индексы** смотрят «внутрь» данных: *«Насколько плотными получились кластеры и как далеко они друг от друга в пространстве?»*
*   **Внешние индексы** смотрят «снаружи»: *«Насколько полученное разбиение на группы совпадает с другим разбиением (или с правильными ответами)?»*
