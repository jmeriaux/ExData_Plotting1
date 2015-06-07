
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
{source("./LoadData.R")}


#Use Pdf device
#Note: I used pdf device here - screen output and dev.copy does not
#generate a correct pdf output!

pdf(file="./Rplot4.pdf");

# Set the layout: 4 figures arranged in 2 rows and 2 columns
par(mfrow=c(2,2))

#plot graph 1
plot(hpcon$Tstamp,hpcon$Global_active_power, type = "l",xlab="",ylab="Global Active Power");

#plot graph 2
plot(hpcon$Tstamp,hpcon$Voltage, type = "l",xlab="datetime",ylab="Voltage");

#plot graph 3
plot(hpcon$Tstamp,hpcon$Sub_metering_1, col="black", type = "l",xlab="",ylab="Energy sub metering");
lines(hpcon$Tstamp,hpcon$Sub_metering_2, col="red",xlab="",ylab="Energy sub metering");
lines(hpcon$Tstamp,hpcon$Sub_metering_3,  col="blue",xlab="",ylab="Energy sub metering");
legend("topright",bty="n",pt.lwd=0.1, pt.cex=0.1, lty=1,pch="_", col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"));

#plot graph 4
plot(hpcon$Tstamp,hpcon$Global_reactive_power, type = "l",xlab="datetime",ylab="Global reactive power");

#Close device
dev.off();

