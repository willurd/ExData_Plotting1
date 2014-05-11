source("makeplot.R")

# NOTE: The code for reading the data and generating the PNG is in data/data.R (sourced above).

makeplot("plot2", function(d) {
  plot(d$DateTime, d$Global_active_power,
       type = "l",
       ylab = "Global Active Power (kilowatts)",
       xlab = ""
  )
})
