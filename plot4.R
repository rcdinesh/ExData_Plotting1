png(file="plot4.png")
par(mfcol=c(2,2))
with(hpc,plot(Date, Global_active_power,type="l",ylab = "Global Active Power (Kilowatts)"))
with(hpc,plot(Date, Sub_metering_1  ,ylab = "Global Active Power (Kilowatts)",type="l"))
with(hpc,lines (Date, Sub_metering_2  ,col="red"))
with(hpc,lines (Date, Sub_metering_3  ,col="blue"))
legend("topright",
       lty=1,
       lwd=1,
       col=c("black","red","blue"),cex=0.5
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(hpc,plot(Date, Voltage,type="l",ylab = "Voltage"))
with(hpc,plot(Date, Global_reactive_power,ylab = "Global Reactive Power",type="l"))
dev.off()
