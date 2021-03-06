# install.packages("ggplot2")

library("ggplot2")

weights <- read.csv("weights.csv",
                    header = TRUE,
                    sep = ",",
                    as.is = TRUE)

colnames(weights) <-
  c("date", "deadlift", "overhead", "squats", "bench")

weights$date <- as.Date(weights$date, '%d/%m/%Y')

deadlift <-
  subset(weights, (!is.na(weights[, 2])))[, c("date", "deadlift")]

overhead <-
  subset(weights, (!is.na(weights[, 3])))[, c("date", "overhead")]

squats <-
  subset(weights, (!is.na(weights[, 4])))[, c("date", "squats")]

bench <-
  subset(weights, (!is.na(weights[, 5])))[, c("date", "bench")]



jpeg(
  "deadliftPlot.jpg",
  width = 5,
  height = 5,
  units = 'in',
  res = 300
)
ggplot(data = deadlift, aes(x = date, y = deadlift, group = 1)) +
  geom_line(color = "purple", size = 2) +
  geom_point(color = "orange", size = 3) + ylab("Weight") + theme(
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "black"),
    axis.title.x = element_text(colour = "purple"),
    axis.title.y = element_text(colour = "purple")
  )
dev.off()

jpeg(
  "overheadPlot.jpg",
  width = 5,
  height = 5,
  units = 'in',
  res = 300
)
ggplot(data = overhead, aes(x = date, y = overhead, group = 1)) +
  geom_line(color = "purple", size = 2) +
  geom_point(color = "orange", size = 3) + ylab("Weight") + theme(
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "black"),
    axis.title.x = element_text(colour = "purple"),
    axis.title.y = element_text(colour = "purple")
  )
dev.off()

jpeg(
  "squatsPlot.jpg",
  width = 5,
  height = 5,
  units = 'in',
  res = 300
)
ggplot(data = squats, aes(x = date, y = squats, group = 1)) +
  geom_line(color = "purple", size = 2) +
  geom_point(color = "orange", size = 3) + ylab("Weight") + theme(
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "black"),
    axis.title.x = element_text(colour = "purple"),
    axis.title.y = element_text(colour = "purple")
  )
dev.off()

jpeg(
  "benchPlot.jpg",
  width = 5,
  height = 5,
  units = 'in',
  res = 300
)
ggplot(data = bench, aes(x = date, y = bench, group = 1)) +
  geom_line(color = "purple", size = 2) +
  geom_point(color = "orange", size = 3) + ylab("Weight") + theme(
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "black"),
    axis.title.x = element_text(colour = "purple"),
    axis.title.y = element_text(colour = "purple")
  )
dev.off()
