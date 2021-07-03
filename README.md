# shoesize
 Simple Shoe Size Converter - version 0.1.2/
 
### Disclaimer
This is a very early work-in progress package and I cannot guarantee corectness of the results.
You are free to try it out, use it, or maybe even submit a pull request.

### How to install
Run the following two lines to install. That's it!
```R 
library(devtools) 
install_github("Perosu1/shoesize")
```
### The shoesize function
```R
shoesize(input, system_from, system_to)
```
Systems currently supported for system_from and system_to:
1. "EU"
1. "UK"
1. "USm" (US male)
1. "USf" (US female)
1. "mondo"

### Example
```R
library(shoesize)
shoesize(40, "EU", "UK")
#> 7
```
This example show how to get a UK equivalent to the EU size 40.

### To-do
1. Add error handling & error messages
1. Improve the documentation
1. Impliment more size systems
1. Adding named arguments (in addition to positional arguments)
1. (Aspirational) rewrite package in C for even better performance
