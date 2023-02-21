setwd(paste0(getwd(),"/test"))

library(profvis)
library(ggplot2)
library(shiny)

# Simple example
profvis({
  data(diamonds, package = "ggplot2")
  
  plot(price ~ carat, data = diamonds)
  m <- lm(price ~ carat, data = diamonds)
  abline(m, col = "red")
})

# More complex example
profvis({
  # generate a dataset
  data(diamonds, package = "ggplot2")
  
  # save it 
  write.csv(diamonds, "diamonds.csv")
  
  # load it
  csv_diamonds <- read.csv("diamonds.csv")
  
  # summarize
  summary(diamonds)

  # plot it  
  plot(price ~ carat, data = csv_diamonds)
  m <- lm(price ~ carat, data = csv_diamonds)
  abline(m, col = "red")
  
  #create histogram of values for price
  ggplot(data=csv_diamonds, aes(x=price)) +
    geom_histogram(fill="steelblue", color="black") +
    ggtitle("Histogram of Price Values")
  
  #create scatterplot of carat vs. price, using cut as color variable
  ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point()
  
  #create scatterplot of carat vs. price, using cut as color variable
  ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
    geom_point()
  
  # Examples from: https://www.statology.org/diamonds-dataset-r/#:~:text=The%20diamonds%20dataset%20is%20a,the%20diamonds%20dataset%20in%20R. 
})

# Shiny app
profvis({runApp()})




