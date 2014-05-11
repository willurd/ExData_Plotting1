# source("data/data.R")

makeplot("plot2", function(d) {
  plot(d$DateTime, d$Global_active_power,
       type = "l",
       ylab = "Global Active Power (kilowatts)",
       xlab = ""
  )
})
