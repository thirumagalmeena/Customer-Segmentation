library(dplyr)
library(readr)

data <- read_csv("data/cleaned_mall_customers.csv")
df <- data %>% select(AnnualIncome, SpendingScore)
df_scaled <- scale(df)

dist_matrix <- dist(df_scaled)
hc <- hclust(dist_matrix, method = "ward.D2")

# Plot dendrogram
plot(hc, labels = FALSE, hang = -1)

# Cut into 5 clusters
data$HierCluster <- as.factor(cutree(hc, k = 5))

# Save results
write_csv(data, "output/hierarchical_clusters.csv")
