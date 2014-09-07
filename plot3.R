png(filename='plot3.png',
    width = 480,
    height = 480,
    units = "px")
with(hpc,plot(Date, Sub_metering_1,type="l",ylab = "Global Active Power (Kilowatts)"))
with(hpc,lines (Date, Sub_metering_2  ,col="red"))
with(hpc,lines (Date, Sub_metering_3  ,col="blue"))
# Add the legend in the top right corner
legend("topright",
       lty=1,
       lwd=1,
       col=c("black","red","blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
