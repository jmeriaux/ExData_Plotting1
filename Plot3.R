

if (!exists("hpconsumption") ) 
{source("./LoadData.R")}


dev.off();

plot(hpcon$Tstamp,hpcon$Sub_metering_1, type = "n",xlab="",ylab="Energy sub metering");

plot(hpcon$Tstamp,hpcon$Sub_metering_1, col="black", type = "l",xlab="",ylab="Energy sub metering");

lines(hpcon$Tstamp,hpcon$Sub_metering_2, col="red",xlab="",ylab="Energy sub metering" );

lines(hpcon$Tstamp,hpcon$Sub_metering_3,  col="blue",xlab="",ylab="Energy sub metering");


legend("topright", pch="_", col = c("black", "red","blue"), legend = c("Sub metering 1", "Sub metering 2","Sub metering 3"))