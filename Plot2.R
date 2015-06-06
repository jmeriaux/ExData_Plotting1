
#Test if data exists otherwise load it
if (!exists("hpconsumption") ) 
  {source("./LoadData.R")}

#Reset device output
#dev.off();


#Plot grah
plot(hpcon$Tstamp,hpcon$Global_active_power, type = "l", xlab="",ylab="Global Active Power (kilowatts)");

#Plot in pdf file
dev.copy(device=pdf,file="./Rplot2.pdf");

dev.off();
