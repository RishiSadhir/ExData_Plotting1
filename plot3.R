source("GetData.R")

## Plot 3
with(data, {
    plot(Sub_metering_1~DateTime, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    lines(Sub_metering_2~DateTime,col='Red')
    lines(Sub_metering_3~DateTime,col='Blue')
})
legend("topright", col=c("Black", "Red", "Blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
