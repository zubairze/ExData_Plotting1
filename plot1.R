hpw <- read.table("household_power_consumption.txt", header = TRUE, quote = "", na.strings = "?", sep = ";")

hpw <- subset(hpw, as.character(Date) %in% c('1/2/2007', '2/2/2007'))

hist(hpw$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main = "Global Active Power")

dev.copy(png, file = 'plot1.png')
dev.off()