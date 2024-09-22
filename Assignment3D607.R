#Assignment 3 by Jose Fuentes
# First part: Provide an example of at least three dataframes in R that demonstrate normalization.

# Initial DataFrame
employees_raw <- data.frame(
  employee_id = c(1, 2, 3, 4),
  employee_name = c("John", "Emma", "Mike", "Sophia"),
  department_name = c("HR", "IT", "IT", "Finance"),
  project_name = c("Recruitment", "Website", "Database", "Budgeting"),
  project_desc = c("Hiring new employees", "Company website revamp", "Database upgrade", "Budget management"),
  stringsAsFactors = FALSE
)

print(employees_raw)

# Normalized Employee DataFrame
employees <- data.frame(
  employee_id = c(1, 2, 3, 4),
  employee_name = c("John", "Emma", "Mike", "Sophia"),
  department_id = c(1, 2, 2, 3),
  stringsAsFactors = FALSE
)

print(employees)

# Normalized Department DataFrame
departments <- data.frame(
  department_id = c(1, 2, 3),
  department_name = c("HR", "IT", "Finance"),
  stringsAsFactors = FALSE
)

print(departments)

# Normalized Project DataFrame
projects <- data.frame(
  project_name = c("Recruitment", "Website", "Database", "Budgeting"),
  project_desc = c("Hiring new employees", "Company website revamp", "Database upgrade", "Budget management"),
  stringsAsFactors = FALSE
)

print(projects)

# Second part: Identify majors containing "DATA" or "STATISTICS"
# Reading the CSV file from the specified path
majors_list <- read.csv("C:/Users/Dell/Downloads/majors-list.csv", stringsAsFactors = FALSE)

# View the first few rows of the data
head(majors_list)

# Find majors that contain either "DATA" or "STATISTICS"
majors_with_data_statistics <- majors_list[grep("DATA|STATISTICS", majors_list$Major, ignore.case = TRUE), ]

# Display the result
print(majors_with_data_statistics)

# Third part: Describe what these expressions will match
# - `(.)\1\1`: Matches the same character repeating three times, like "aaa".
# - `(.)(.)\\2\\1`: Matches a pair of characters followed by their reverse, such as "abba".
# - `(..)\1`: Matches two characters repeated, for instance "a1a1".
# - `(.).\\1.\\1`: Matches a character followed by any, then the same one, another, and the first again, e.g. "abaca".
# - `(.)(.)(.).*\\3\\2\\1`: Matches three characters, any sequence, then the reverse order, like "abc1cba".

# Fourth part: Construct regular expressions to match specific patterns in words
# 1. Words that start and end with the same character.
# 2. Words that contain a repeated pair of letters.
# 3. Words that contain one letter repeated in at least three places.

# Regular expressions:
# 1. Matching Words that Start and End with the Same Character:
# regex: `^(.)[^\\1]*\\1$`

# 2. Finding Repeated Pairs of Letters:
# regex: `([A-Za-z]{2}).*\\1`

# 3. Identifying Letters Repeated at Least Three Times:
# regex: `([a-z]).*\\1.*\\1`


