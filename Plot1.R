
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
{source("./LoadData.R")}

dev.off();

hist(hpcon$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts");