
# getting the url
url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)

# viewing the dataframe
# View(voters)

# finding number of rows
print(nrow(voters))

# finding number of columns
print(ncol(voters))

# acessing a column
print(voters$voter_category)

# finding the unique values in a column
print(unique(voters$voter_category))
print(unique(voters$Q22))
print(unique(voters$Q21))

# creating a factor, c creates a vector
print(factor(
    voters$Q21,
    labels = c("Yes", "No", "Unsure/Undecided"),
    exclude = c(-1)
))
