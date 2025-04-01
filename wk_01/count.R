
# adding up votes for an election
mario <-as.integer(readline("Enter votes for Mario: "))
peach <- as.integer(readline("Enter votes for Peach: "))
bowser <- as.integer(readline("Enter votes for Bowser: "))

# adding up the votes
total <- sum(mario, peach, bowser)
print(paste("Total Votes: ", total, sep=""))