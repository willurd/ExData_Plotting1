library(png)

log <- function(...) {
  cat(sprintf(...), "\n")
}

test <- function (num) {
  plot.test <- readPNG(file.path("figure", paste("unnamed-chunk-", num + 1, ".png", sep = "")))
  plot.actual <- readPNG(paste("plot", num, ".png", sep = ""))
  
  summary(plot.test)
  summary(plot.actual)
  
  if (!all(plot.test == plot.actual)) {
    log("Plot '%s' is NOT correct", plot)
  } else {
    log("Plot '%s' is correct", plot)
  }
}

sapply(1:4, test)
test(1)
test(2)
test(3)
test(4)
