source("readdata.R")
png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

#
# Plot row 1, col 1
#
plot(dat$POSIX_Date, dat$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")


#
# Plot row 1, col 2
#
plot(dat$POSIX_Date, dat$Voltage,
     col = "black",
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")


# Plot row 2, col 1
line_data <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
line_colors <- c("black", "red", "blue")
line_types <- c(1, 1, 1)
x_label <- ""
y_label <- "Energy sub metering"

x_range <- range(dat$POSIX_Date)
y_range <- range(dat$Sub_metering_1, dat$Sub_metering_2, dat$Sub_metering_3)

plot(x_range, y_range,
     type = "n",
     xlab = x_label,
     ylab = y_label)

for (i in 1:length(line_data))
{
    y <- dat[[ line_data[i] ]]
    lines(dat$POSIX_Date, y, col = line_colors[i])
}

legend("topright",
       bty = "n",
       col = line_colors,
       legend = line_data,
       lty = line_types)

#
# Plot row 2, col 2
#
plot(dat$POSIX_Date, dat$Global_reactive_power,
     col = "black",
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

par(mfrow = c(1, 1))
dev.off()
