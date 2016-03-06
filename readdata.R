rm(list = ls())
file <- "data/household_power_consumption.txt"
separator <- ";"
date_format <- "%d/%m/%Y"
valid_dates <- as.Date(c("2007-02-01", "2007-02-02"))

dat <- read.table(file, header = TRUE, sep = separator, stringsAsFactors = FALSE)
dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")
dat <- subset(dat, Date %in% valid_dates)

dat$POSIX_Date <- as.POSIXlt(paste(dat$Date, dat$Time, sep = " "))
dat$Day <- weekdays(dat$POSIX_Date, abbreviate = TRUE)
dat$Global_active_power <- as.numeric(dat$Global_active_power)
dat$Global_reactive_power <- as.numeric(dat$Global_reactive_power)
dat$Voltage <- as.numeric(dat$Voltage)
dat$Global_intensity <- as.numeric(dat$Global_intensity)
dat$Sub_metering_1 <- as.numeric(dat$Sub_metering_1)
dat$Sub_metering_2 <- as.numeric(dat$Sub_metering_2)
dat$Sub_metering_3 <- as.numeric(dat$Sub_metering_3)
