rm(list = ls())
file <- "data/household_power_consumption.txt"
separator <- ";"
date_format <- "%d/%m/%Y"
valid_dates <- as.Date(c("2007-02-01", "2007-02-02"))

dat <- read.table(file, header = TRUE, sep = separator, stringsAsFactors = FALSE)
dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")
dat <- subset(dat, Date %in% valid_dates)
dat$Global_active_power <- as.numeric(as.character(dat$Global_active_power))
