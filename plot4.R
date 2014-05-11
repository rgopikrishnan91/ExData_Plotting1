#----- Cleans up and loads the data------#
Source('CleanData.R')

#----- plot ------ #

#Opens up the png device

png("plot4.png",height=480,width=480)

#plots multiple charts

#Setting mfrow to accomadate multiple rows
par(mfrow=c(2,2))

#plots
plot(data$DateTime,data[,3],type="l",ylab="Global Active Power",xlab="") #plot 1

plot(data$DateTime,data$Voltage,xlab="datetime",ylab="Voltage",type="l") #Plot 2

#plot3
plot(data$DateTime,data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(data$DateTime,data$Sub_metering_1)
lines(data$DateTime,data$Sub_metering_2,col="red")
lines(data$DateTime,data$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,lty=c(1,1,1),bty="n")

#plot4
plot(data$DateTime,data$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")

#Turning off
dev.off()