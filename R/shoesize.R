# shoesize package - By Peter Kenda / 2021
# currently supported systems: "EU", "UK", "mondo", "USm", "USf"
# results are approximate since the systems are fundamentally incompatible
# results are ultimately just approximations,
# please do not rely on this for anything too important

shoesize <- function(input, system_from, system_to) {
  chart <- read.csv("chart.csv")
  selection <- chart[ , c(system_from, system_to)]
  result <- selection[(selection[, 1] == input), 2]
  return(result);
}


