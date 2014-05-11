#----- Cleans up and loads the data------#
Source('CleanData.R')

#----- plot ------ #

#Opens up the png device

png("plot3.png",height=480,width=480)

#plots line chart

plot(data$DateTime,data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(data$DateTime,data$Sub_metering_1)
lines(data$DateTime,data$Sub_metering_2,col="red")
lines(data$DateTime,data$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,lty=c(1,1,1))

#Turning off
dev.off()