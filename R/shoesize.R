# shoesize package - By Peter Kenda / 2021
# currently supported systems: "EU", "UK", "mondo", "USm", "USf"
# results are approximate since the systems are fundamentally incompatible
# results are ultimately just approximations,
# please do not rely on this for anything too important


#' Shoe size conversion
#'
#' Convert shoe sizes between different systems
#' @param input The shoe size in the input system.
#' @param system_from The size system of the input size
#' @param sytem_to The size system of the output size
#' @return The shoe size in the output system.
#' @examples 
#' shoesize(40, "EU", "UK")
#' @export
shoesize <- function(input, system_from, system_to) {
  chart <- read.csv("chart.csv")
  selection <- chart[ , c(system_from, system_to)]
  result <- selection[(selection[, 1] == input), 2]
  return(result);
}


