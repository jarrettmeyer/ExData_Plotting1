source("readdata.R")
png("plot2.png", width = 480, height = 480)

plot_type <- "l" # Line plot.
xaxis_label <- ""
yaxis_label <- "Global Active Power (kilowatts)"

plot(dat$POSIX_Date, dat$Global_active_power,
     type = plot_type,
     xlab = xaxis_label,
     ylab = yaxis_label)

dev.off()
