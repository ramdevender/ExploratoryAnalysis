consumption <- read.csv("./household_power_consumption.txt",sep=";",na.strings='?',header=TRUE,colClasses = c("character",rep("factor",1),rep("numeric",7)))

selection<-consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]

plot(strptime(paste(selection$Date,selection$Time),"%d/%m/%Y %H:%M:%S"),selection$Global_active_power,ylab="Global Active Power (kilowatts)",xlab="",type="l")

dev.copy(png, file = "plot2.png")  ## copy the plot to a PNG file

dev.off()  ## close PNG device
