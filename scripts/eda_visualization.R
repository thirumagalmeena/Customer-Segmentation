library(ggplot2)
library(readr)

data <- read.csv("data/cleaned_mall_customers.csv")

# Gender distribution
ggplot(data, aes(x = Gender)) +
  geom_bar(fill = "skyblue") +
  theme_minimal()

# Age distribution
ggplot(data, aes(x = Age)) +
  geom_histogram(bins = 20, fill = "lightgreen", color = "black")

# Spending Score vs Annual Income
ggplot(data, aes(x = AnnualIncome, y = SpendingScore, color = Gender)) +
  geom_point(size = 3) +
  theme_minimal()

# Boxplot of Income by Gender
ggplot(data, aes(x = Gender, y = AnnualIncome, fill = Gender)) +
  geom_boxplot() +
  theme_minimal()
