# Load the dataset
data <- read.csv("data/Mall_Customers.csv")
if (is.null(data)) {
  stop("Data could not be loaded. Please check the file path and format.")
}

# Explore the dataset
str(data)
summary(data)

# Check for missing values
missing_values <- sum(is.na(data))
if (missing_values > 0) {
  warning("There are missing values in the dataset.")
} else {
  cat("No missing values found in the dataset.\n")
}

# Check for duplicates
duplicates <- duplicated(data)
if (any(duplicates)) {
  warning("There are duplicate rows in the dataset. Removing duplicates.")
  data <- data[!duplicates, ]
}
data
# Rename columns
colnames(data) <- c("CustomerID", "Gender", "Age",
"AnnualIncome", "SpendingScore")

# Save the cleaned data
write.csv(data, "data/cleaned_mall_customers.csv", row.names = FALSE)
cat("Data has been cleaned and saved to 
'data/cleaned_mall_customers.csv'.\n")

# Load the cleaned data for further analysis
cleaned_data <- read.csv("data/cleaned_mall_customers.csv")
if (is.null(cleaned_data)) {
  stop("Cleaned data could not be loaded.
  Please check the file path and format.")
}

# Explore the cleaned data
str(cleaned_data)
summary(cleaned_data)
