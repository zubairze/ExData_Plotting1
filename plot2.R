hpw <- read.table("household_power_consumption.txt", header = TRUE, quote = "", na.strings = "?", sep = ";")

hpw <- subset(hpw, as.character(Date) %in% c('1/2/2007', '2/2/2007'))

times <- strptime(paste(as.character(hpw$Date), as.character(hpw$Time)), format = "%d/%m/%Y %H:%M:%S")


plot(times, hpw$Global_active_power, type = 'l', xlab = "", ylab = 'Global Active Power (kilowatts)')

dev.copy(png, file = 'plot2.png')
dev.off()