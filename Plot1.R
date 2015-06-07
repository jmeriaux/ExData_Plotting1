
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
{source("./LoadData.R")}

#Set plot size
par(pin = c(5, 5));

# plot histogram
hist(hpcon$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)");
