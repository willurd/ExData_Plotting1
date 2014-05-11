source("data/data.R")

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
    xlab = ""
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
    ylim = c(0.0, 0.5),
    ylab = "Global_reactive_power",
    xlab = ""
  )
  
  axis(side = 1, at = seq(from = 0.0, to = 0.5, by = 0.1), labels = TRUE)
}

# makeplot("plot3", function(d) {
  par(mfrow = c(2, 2))
  plot1()
  plot2()
  plot3()
  plot4()
# })
