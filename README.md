# Customer Segmentation Analysis (Mall Customer Dataset)

Cluster mall customers based on purchasing behaviour to uncover actionable marketing insights using R. The project demonstrates **EDA, visualisation, K‑means & hierarchical clustering, and basic PCA** — all runnable from **VS Code**.

---

## Folder Structure

```text
CustomerSegmentationProject/
├─ data/                      # Raw & cleaned datasets
│  ├─ Mall_Customers.csv
│  └─ cleaned_mall_customers.csv
├─ scripts/                   # Re‑usable R scripts
│  ├─ load_clean_data.R
│  ├─ eda_visualization.R
│  ├─ kmeans_clustering.R
│  ├─ hierarchical_clustering.R
│  └─ pca_analysis.R
├─ output/                    # Generated results
│  └─ cluster_results.csv
└─ README.md                  # You are here
```

---

## Prerequisites

| Tool                     | Version (or later) | Purpose             |
| ------------------------ | ------------------ | ------------------- |
| R                        | 4.3                | Core language       |
| Rtools (Windows only)    | –                  | Package compilation |
| VS Code                  | 1.90               | IDE                 |
| VS Code Extension: **R** | latest             | R language support  |

Install required packages once:

```r
install.packages(c(
  "dplyr", "ggplot2", "readr", "cluster", "factoextra",
  "gridExtra", "languageserver"
))
```

---

## Quick Start (VS Code)

1. **Clone / unzip** this repository and open the folder in VS Code.
2. Download *Mall Customer Segmentation Data* from Kaggle and place `Mall_Customers.csv` inside `data/`.
3. Run scripts in order:

   ```r
   source("scripts/load_clean_data.R")         # cleaning
   source("scripts/eda_visualization.R")       # EDA & plots
   source("scripts/means_clustering.R")        # K‑means (k=5)
   source("scripts/hierarchical_clustering.R") # Ward D2 tree
   source("scripts/pca_analysis.R")            # optional
   ```
4. **Outputs** appear in `output/` and interactive plots in VS Code’s R plot pane.

---

## What You’ll See

| Script       | Deliverable                                                                 |
| ------------ | --------------------------------------------------------------------------- |
| EDA          | Bar/box/histogram plots showing gender, age, income & spending distribution |
| K‑means      | Elbow‑curve, 2‑D scatter with coloured clusters, `cluster_results.csv`      |
| Hierarchical | Dendrogram and cluster assignments saved to `hierarchical_clusters.csv`     |
| PCA (opt.)   | Scree plot & biplot illustrating variance explained                         |

---

# License
- This project is licensed for educational purposes only.

---

## Contributor

**Thirumagal Meena A**  
Applied Mathematics and Computational Sciences  
Psg College of Technology  
