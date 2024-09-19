# Load necessary libraries
library(dplyr)
library(ggplot2)  # Ensure ggplot2 is loaded


# Task 1: Import the class one survey data
C1survey <- read.csv("/Users/ckw/Downloads/Class 1 Survey Fall 2024_di.csv")

# Task 2: Determine the number of observations (a) and variables (b)
num_observations <- nrow(C1survey)
num_variables <- ncol(C1survey)
cat("Number of observations: ", num_observations, "\n")
cat("Number of variables: ", num_variables, "\n")

# Task 3: Rename the column variables to shorter and more descriptive names
colnames(C1survey) <- c("id", "like_cats", "like_dogs", "island_item", "life_slogan", 
                        "work_in_US", "post_graduate_career", "public_health_topic",
                        "number", "birth_day", "birth_month", "home_country", 
                        "home_state", "home_city", "education_level")

# Display the renamed columns
cat("Renamed columns: \n")
print(colnames(C1survey))

# Task 4: Generate summary statistics for all variables
summary(C1survey)

# Task 5: Find the number of unique responses for each categorical variable
unique_responses <- sapply(C1survey, function(x) length(unique(x)))
cat("Unique responses per variable: \n")
print(unique_responses)

# Task 6: Display the distribution of answers for "Do you like cats?" question
cat_distribution <- table(C1survey$like_cats)
cat("Distribution of responses for 'Do you like cats?':\n")
print(cat_distribution)

# Task 7: Create a bar chart to illustrate the distribution of 'Do you like cats?' responses
ggplot(C1survey, aes(x = like_cats)) +
  geom_bar(fill = "blue") +
  labs(title = "Distribution of Responses for 'Do you like cats?'", x = "Response", y = "Count")

