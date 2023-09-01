#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    # https://mastering-shiny.org/performance.html#the-flame-graph:~:text=Sys.sleep()%20asks%20the%20operating%20system%20to%20%E2%80%9Cpark%E2%80%9D%20the%20process%20for%20some%20amount%20of%20time%2C%20so%20R%20is%20not%20actually%20running.%20This%20is%20why%20we%20had%20to%20use%20profvis%3A%3Apause()%20above
    #Sys.sleep(3) # This simulates a long running function
    profivs::pause(3)
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white',
         xlab = 'Waiting time to next eruption (in mins)',
         main = 'Histogram of waiting times')
  })
}

# Run the application 
shinyApp(ui = ui, server = server)



# library(shiny)
# library(deSolve)
# 
# van_der_pol <- function(t, y, mu) {
#   Sys.sleep(3) # This simulates a long running function
#   d_x <- y[2]
#   d_y <- mu * (1 - y[1]^2) * y[2] - y[1]
#   list(c(X = d_x, Y = d_y))
# }
# 
# server <- function(input, output) {
#   output$brussels <- renderPlot({
#     y0 <- c(X = input$X, Y = input$Y)
#     times <- seq(0, 1000, .01)
#     out <- ode(y0, times, van_der_pol, input$mu)
#     par(mfrow = c(1, 1))
#     plot(out[, 2:3], type = "l", xlab = "X", ylab = "Y", main = "state diagram")
#   })
# }
# 
# ui <- fluidPage(
#   headerPanel("Van der Pol oscillator"),
#   sidebarLayout(
#     sidebarPanel(
#       h3("Init values"),
#       numericInput("X", label = "X", min = 0.0, max = 5,  value = 1, step = 0.2),
#       numericInput("Y", label = "Y", min = 0.0, max = 5,  value = 1, step = 0.2),
#       
#       h3("Parameters"),
#       numericInput("mu", label = "mu", min = 0.0, max = 5,  value = 1, step = 0.1)
#     ),
#     mainPanel(
#       h3("Simulation results"),
#       plotOutput("brussels")
#     )
#   )
# )
# 
# shinyApp(ui = ui, server = server)