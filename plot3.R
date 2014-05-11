source("makeplot.R")

# NOTE: The code for reading the data and generating the PNG is in data/data.R (sourced above).

makeplot("plot3", function(d) {
  plot(d$DateTime, d$Sub_metering_1,
       type = "l",
       ylab = "Energy sub metering",
       xlab = ""
  )
  
  points(d$DateTime, d$Sub_metering_2, type = "l", col = "red")
  points(d$DateTime, d$Sub_metering_3, type = "l", col = "blue")
  
  legend(x = "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black", "red", "blue"),
    lty = 1
  )
})
