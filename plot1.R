source("readdata.R")
png("plot1.png", width = 480, height = 480)

color <- "red"
main_title <- "Global Active Power"
xaxis_label <- "Global Active Power (kilowatts)"

hist(dat$Global_active_power,
     col = color,
     main = main_title,
     xlab = xaxis_label)
     
dev.off()
