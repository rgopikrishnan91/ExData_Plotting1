#----- Cleans up and loads the data------#
Source('CleanData.R')

#----- plot ------ #

#Opens up the png device

png("plot1.png",height=480,width=480)

#plots histogram
hist(data[,3],col="red",xlab="Global Active Power (Kilowatts)",main="Global Active Power")
#Turning off
dev.off()