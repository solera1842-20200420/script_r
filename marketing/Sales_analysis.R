# ABC analysis

# library
library(ABCanalysis)

# dataset
d <- read.csv('../script_python/marketing/data/SalesKaggle3.csv')
d_units <- d$ItemCount

ABCanalysis(d_units, ABCcurve, PlotIt = TRUE)
