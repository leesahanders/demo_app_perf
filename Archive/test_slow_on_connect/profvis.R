setwd(paste0(getwd(),"/test_slow"))

library(profvis)
library(ggplot2)

# Shiny app
profvis({runApp()})




