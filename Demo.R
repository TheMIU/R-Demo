#########################
#          R            #
#########################

#########################
# Basic Syntax Elements #
#########################

# 1. Comments
# Single line comment
# Multiline comments are typically done by 
# repeating the single-line comment syntax.

# 2. Variables
# Assign values using <- or =.
x <- 10
y = 5

# 3. Data Types
# 3.1 Numeric
n <- 10.5

# 3.2 Integer (use L to specify integer)
i <- 10L

# 3.3 Character
s <- "Hello"

# 3.4 Logical
b <- TRUE

# 4. Vectors
# Create with c() function.
v <- c(1, 2, 3, 4)

# 5. Matrices
# Create with matrix() function.
m <- matrix(1:9, nrow = 3, ncol = 3)

# 6. Lists
lst <- list(name = "John", age = 30, scores = c(85, 90, 88))

# 7. Data Frames (Table-like structures)
df <- data.frame(
  name = c("Alice", "Bob"),
  age = c(25, 30),
  score = c(90, 85)
)

# 8. Factors (Categorical data)
gender <- factor(c("male", "female", "female", "male"))

#########################
#   Control Structures  #
#########################

# 9. Conditional Statements
# 9.1 If-else
if (x > 0) {
  print("Positive")
} else {
  print("Non-positive")
}

# 10. Loops
# 10.1 For loop
for (i in 1:5) {
  print(i)
}

# 10.2 While loop
count <- 1
while (count <= 5) {
  print(count)
  count <- count + 1
}

# 11. Functions
add <- function(a, b) {
  return(a + b)
}
result <- add(3, 4)

#########################
#   Common Functions    #
#########################

# 12. Basic Math Operations
sum <- 5 + 3
diff <- 5 - 3
product <- 5 * 3
quotient <- 5 / 3
power <- 5 ^ 3
mod <- 5 %% 3

# 13. Statistical Functions
# 13.1 Mean
mean_value <- mean(v)

# 13.2 Median
median_value <- median(v)

# 13.3 Standard Deviation
sd_value <- sd(v)

# 13.4 Summary
summary_value <- summary(v)

#########################
#   Data Manipulation   #
#########################

# 14. Subset Data
# Subset data frames by condition
subset_df <- subset(df, age > 25)

# 15. Sort Data
# Sort vectors
sorted_v <- sort(v)

# 16. Merge Data Frames
# Merge two data frames by a common column
df1 <- data.frame(id = 1:3, name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(id = 1:3, score = c(90, 85, 88))
merged_df <- merge(df1, df2, by = "id")

#########################
#     Plotting Data     #
#########################

# 17. Basic Plot
# Create a basic scatter plot
x <- 1:10
y <- x^2
plot(x, y, type = "b", col = "blue", main = "Basic Plot", xlab = "X-axis", ylab = "Y-axis")

# 18. Advanced Plotting with ggplot2
# Install ggplot2 if not already installed
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Create a ggplot
ggplot(data = df, aes(x = age, y = score)) +
  geom_point() +
  ggtitle("Scatter Plot of Age vs Score") +
  xlab("Age") +
  ylab("Score")

#########################
#     Data Analysis     #
#########################

# 19. Summary Statistics
# Generate summary statistics for a data frame
summary_stats <- summary(df)

# 20. Correlation
# Calculate correlation between two variables
correlation <- cor(df$age, df$score)

# 21. Linear Regression
# Perform a simple linear regression
model <- lm(score ~ age, data = df)
summary(model)

# 22. Predicting with the Model
# Predict scores using the regression model
new_ages <- data.frame(age = c(22, 28, 35))
predicted_scores <- predict(model, new_ages)

#########################
#      Saving Data      #
#########################

# 23. Save Data to CSV
# Write data frame to a CSV file
write.csv(df, "data.csv", row.names = FALSE)

# 24. Load Data from CSV
# Read data frame from a CSV file
loaded_df <- read.csv("data.csv")

#########################
#    Additional Topics  #
#########################

# 25. Installing and Loading Packages
# Install a package if not already installed
if (!require(dplyr)) install.packages("dplyr")
library(dplyr)

# 26. Data Manipulation with dplyr
# Filter rows, select columns, arrange rows, mutate data, and summarize data
df_filtered <- df %>% 
  filter(age > 25) %>%
  select(name, score) %>%
  arrange(desc(score)) %>%
  mutate(new_score = score * 1.1) %>%
  summarize(mean_score = mean(new_score))

# 27. Handling Missing Data
# Detect missing values
missing_data <- is.na(df)

# Replace missing values with a specific value
df$score[is.na(df$score)] <- 0

# 28. String Manipulation with stringr
# Install stringr if not already installed
if (!require(stringr)) install.packages("stringr")
library(stringr)

# String operations: detect, replace, split, etc.
example_string <- "Hello, World!"
str_detect(example_string, "World")
str_replace(example_string, "World", "R")
str_split(example_string, ", ")

#########################
#      End of Script    #
#########################
