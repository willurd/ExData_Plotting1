source("data/data.R")

# NOTE: The code for reading the data and generating the PNG is in data/data.R (sourced above).

makeplot("plot1", function(d) {
  hist(d$Global_active_power,
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       col = "red"
  )
})
