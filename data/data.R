setwd("~/Desktop/eda1")
library(sqldf)

data.path = "data/household_power_consumption.txt"

# Test variables.
size <- 504
bg = "transparent"

# Actual variables.
# size <- 480
# bg <- "white"

log <- function(...) {
  cat(sprintf(...), "\n")
}

# This function takes care of loading and cleaning the data, setuping up the
# graphics device, calling the function that defines the plot, and saving the
# final plot.
makeplot <- function(name, fn.generator) {
  filename <- paste(name, ".png", sep = "")
  
#   # Read the data.
#   log("Loading data for plot '%s'", name)
#   d <- read.csv.sql(data.path,
#                     sql = "select * from file where Date in ('1/2/2007', '2/2/2007')",
#                     header = TRUE, sep = ";")
#   
#   # Clean the data.
#   log("Cleaning data")
#   d$Date <- as.Date(d$Date, format = "%d/%m/%Y")
#   d$DateTime <- strptime(paste(d$Date, d$Time), format = "%Y-%m-%d %H:%M:%S")
  
  # Setup the PNG graphics device.
  log("Setting up graphics device")
  png(filename, width = size, height = size, bg = bg)
  
  # Call the generator function that defines the plot.
  log("Generating plot")
  fn.generator(d)
  
  # Save the PNG.
  log("Saving to %s", filename)
  dev.off()
  log("Saved to %s", normalizePath(filename))
}
