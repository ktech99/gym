weights <- read.csv("weights.csv", header=TRUE, sep=",", as.is=TRUE)

colnames(weights) <- c("date", "deadlift", "overhead", "squats", "bench")

deadlift <- subset(weights, (!is.na(weights[,2])))[, c("date","deadlift")]
