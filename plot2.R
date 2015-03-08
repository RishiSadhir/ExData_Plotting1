source("GetData.R")


## Plot 2
plot(data$Global_active_power~data$DateTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
