
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
{source("./LoadData.R")}

#Set plot size
par(pin = c(5, 5));


plot(hpcon$Tstamp,hpcon$Sub_metering_1, col="black", type = "l",xlab="",ylab="Energy sub metering");

lines(hpcon$Tstamp,hpcon$Sub_metering_2, col="red",xlab="",ylab="Energy sub metering" );

lines(hpcon$Tstamp,hpcon$Sub_metering_3,  col="blue",xlab="",ylab="Energy sub metering");

legend("topright", pch="_", col = c("black", "red","blue"), lty=1, legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), pt.cex = 1);

