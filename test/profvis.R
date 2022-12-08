setwd(paste0(getwd(),"/test"))

library(profvis)

# Simple example
profvis({
  data(diamonds, package = "ggplot2")
  
  plot(price ~ carat, data = diamonds)
  m <- lm(price ~ carat, data = diamonds)
  abline(m, col = "red")
})

# Shiny app
profvis({runApp()})




