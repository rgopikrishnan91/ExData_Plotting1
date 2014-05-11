#----- Cleans up and loads the data------#
Source('CleanData.R')

#----- plot ------ #

#Opens up the png device

png("plot2.png",height=480,width=480)

#plots line chart
plot(data$DateTime,data[,3],type="l",ylab="Global Active Power",xlab="")

#Turning off
dev.off()
