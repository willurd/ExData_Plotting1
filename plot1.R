source("data/data.R")

makeplot("plot1", function(d) {
  hist(d$Global_active_power,
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       col = "red"
  )
})
