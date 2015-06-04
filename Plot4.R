

if (!exists("hpconsumption") ) 
{source("./LoadData.R")}

# 4 figures arranged in 2 rows and 2 columns
par(mfrow=c(2,2))


plot(hpcon$Tstamp,hpcon$Global_active_power, type = "l",xlab="",ylab="Global Active Power");


plot(hpcon$Tstamp,hpcon$Voltage, type = "l",xlab="datetime",ylab="Voltage");


plot(hpcon$Tstamp,hpcon$Sub_metering_1, col="black", type = "l",xlab="",ylab="Energy sub metering");
lines(hpcon$Tstamp,hpcon$Sub_metering_2, col="red",xlab="",ylab="Energy sub metering");
lines(hpcon$Tstamp,hpcon$Sub_metering_3,  col="blue",xlab="",ylab="Energy sub metering");
legend("topright", pch="_", col = c("black", "red","blue"), legend = c("Sub metering 1", "Sub metering 2","Sub metering 3"));


plot(hpcon$Tstamp,hpcon$Global_reactive_power, type = "l",xlab="datetime",ylab="Global reactive power");

