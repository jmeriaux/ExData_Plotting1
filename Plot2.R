
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
  {source("./LoadData.R")}

#Set plot size
par(pin = c(5, 5));
            
#Plot grah
plot(hpcon$Tstamp,hpcon$Global_active_power, type = "l", xlab="",ylab="Global Active Power (kilowatts)");

