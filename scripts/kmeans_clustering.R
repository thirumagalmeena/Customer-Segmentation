library(dplyr)
library(ggplot2)
library(readr)

data <- read_csv("data/cleaned_mall_customers.csv")
df <- data %>% select(AnnualIncome, SpendingScore)

# Elbow method
wss <- vector()
for (k in 1:10) {
  wss[k] <- sum(kmeans(df, centers = k, nstart = 25)$withinss)
}

plot(1:10, wss, type = "b", pch = 19,
     xlab = "Number of Clusters", ylab = "WSS")

# Apply k-means with 5 clusters
set.seed(123)
km <- kmeans(df, centers = 5, nstart = 25)
data$Cluster <- as.factor(km$cluster)

# Cluster plot
ggplot(data, aes(x = AnnualIncome, y = SpendingScore, color = Cluster)) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "K-Means Customer Segments")

# Save results
write_csv(data, "output/cluster_results.csv")
