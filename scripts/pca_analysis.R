library(readr)
library(ggplot2)

data <- read_csv("data/cleaned_mall_customers.csv")
df <- data %>% select(AnnualIncome, SpendingScore)
pca <- prcomp(df, scale. = TRUE)

# Summary of PCA
summary(pca)

# Biplot
biplot(pca, scale = 0)
