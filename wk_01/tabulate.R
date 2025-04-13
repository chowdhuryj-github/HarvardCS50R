# creating a table using read.table()
votes <- read.table(
    "C:/GitHub/HarvardCS50R/wk_01/votes.csv", 
    sep=",", 
    header=TRUE
)

# creating a table using read.csv()
votes1 <- read.csv("votes.csv")

# viewing the table
# View(votes)
# View(votes1)

# accessing the second column with a integer
print(votes1[, 2])

# accessing the second column using column name
print(votes$poll)

# accessing just a value
print(votes[1, 2])

# accessing the value from a vector
print(votes$poll[1])

# finding the sum of the first value and second value
print(sum(votes$poll[1], votes$poll[2], votes$poll[3]))
print(sum(votes$poll))
print(sum(votes$mail))

# finding sum of values from different columns
print(votes$poll[1] + votes$mail[1])

# finding sum of each row will return a vector
print(votes$poll + votes$mail)

# using brackets will still return a vector
print(votes[,2] + votes[,3])

# creating a new column
votes$total <- votes$poll + votes$mail

# accessing the names of the columns
print(colnames(votes))

# accessing the names of the rows
print(rownames(votes))

# saving the file
write.csv(votes, "totals.csv", row.names=FALSE)

