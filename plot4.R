hpw <- read.table("household_power_consumption.txt", header = TRUE, quote = "", na.strings = "?", sep = ";")

hpw <- subset(hpw, as.character(Date) %in% c('1/2/2007', '2/2/2007'))

times <- strptime(paste(as.character(hpw$Date), as.character(hpw$Time)), format = "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2), mar = c(1, 4, 1, 1))

## First Plot

plot(times, hpw$Global_active_power, type = 'l', ylab = 'Global Active Power')

## Second Plot

plot(times, hpw$Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')

## Third Plot

plot(times, hpw$Sub_metering_1, type = 'n', xlab = "", ylab = 'Energy sub metering')

lines(times, hpw$Sub_metering_1, type = 'l', col = 'black')
lines(times, hpw$Sub_metering_2, type = 'l', col = 'red')
lines(times, hpw$Sub_metering_3, type = 'l', col = 'blue')

legend("topright", legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = c(1, 1, 1), lwd = c(1, 1, 1), bty = 'n', col = c('black', 'red', 'blue'))

## Fourth Plot

plot(times, hpw$Global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')


dev.copy(png, file = 'plot4.png')
dev.off()


