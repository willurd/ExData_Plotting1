source("makeplot.R")

# NOTE: The code for reading the data and generating the PNG is in data/data.R (sourced above).

plot1 <- function() {
  plot(d$DateTime, d$Global_active_power,
    type = "l",
    ylab = "Global Active Power",
    xlab = ""
  )
}

plot2 <- function() {
  plot(d$DateTime, d$Voltage,
    type = "l",
    ylab = "Voltage",
    xlab = "datetime"
  )
}

plot3 <- function() {
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
    lty = 1,
    bty = "n"
  )
}

plot4 <- function() {
  plot(d$DateTime, d$Global_reactive_power,
    type = "l",
    ylab = "Global_reactive_power",
    xlab = "datetime"
  )
}

makeplot("plot4", function(d) {
  # Create a a 2x2 matrix of plots.
  par(mfrow = c(2, 2))
  plot1()
  plot2()
  plot3()
  plot4()
})
