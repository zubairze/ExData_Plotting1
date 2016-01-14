hpw <- read.table("household_power_consumption.txt", header = TRUE, quote = "", na.strings = "?", sep = ";")

hpw <- subset(hpw, as.character(Date) %in% c('1/2/2007', '2/2/2007'))

times <- strptime(paste(as.character(hpw$Date), as.character(hpw$Time)), format = "%d/%m/%Y %H:%M:%S")

plot(times, hpw$Sub_metering_1, type = 'n', xlab = "",ylab = 'Energy sub metering')

lines(times, hpw$Sub_metering_1, type = 'l', col = 'black')
lines(times, hpw$Sub_metering_2, type = 'l', col = 'red')
lines(times, hpw$Sub_metering_3, type = 'l', col = 'blue')

legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = c(1, 1, 1), col = c('black', 'red', 'blue'))

dev.copy(png, file = 'plot3.png')
dev.off()