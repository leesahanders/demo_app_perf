#setwd(paste0(getwd(),"/test_slow_on_connect_workbench"))

library(profvis)
library(ggplot2)
library(shiny)
library(deSolve)

# Shiny app
profvis({runApp()})




