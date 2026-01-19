name <- readline("what doc to analyze: ")
doc <- read.csv(name)

totalpitstops <- nrow(doc)
mintime <- min(doc$time)
maxtime <- max(doc$time)
sumtime <- sum(doc$time)

print(paste("total_pit_stops:", totalpitstops))
print(paste("shortest time", mintime))
print (paste("longest time:", maxtime))
print(paste("sum of laps:", sumtime))




