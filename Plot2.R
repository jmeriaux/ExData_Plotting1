
if (!exists("hpconsumption") ) 
  {source("./LoadData.R")}

dev.off();

plot(hpcon$Tstamp,hpcon$Global_active_power, type = "l", xlab="",ylab="Global Active Power (kilowatts)");

