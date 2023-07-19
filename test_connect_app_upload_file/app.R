#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

## https://shiny.posit.co/r/articles/build/upload/

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
                  value = 30),
      # Input: Select a file ----
      fileInput("file1", "Choose CSV File",
                multiple = TRUE,
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv")),
      
      # Horizontal line ----
      tags$hr(),
      
      # Input: Checkbox if file has header ----
      checkboxInput("header", "Header", TRUE),
      
      # Input: Select separator ----
      radioButtons("sep", "Separator",
                   choices = c(Comma = ",",
                               Semicolon = ";",
                               Tab = "\t"),
                   selected = ","),
      
      # Input: Select quotes ----
      radioButtons("quote", "Quote",
                   choices = c(None = "",
                               "Double Quote" = '"',
                               "Single Quote" = "'"),
                   selected = '"'),
      
      # Horizontal line ----
      tags$hr(),
      
      # Input: Select number of rows to display ----
      radioButtons("disp", "Display",
                   choices = c(Head = "head",
                               All = "all"),
                   selected = "head")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      
      # Output: Data file ----
      tableOutput("contents")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    Sys.sleep(3) # This simulates a long running function
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white',
         xlab = 'Waiting time to next eruption (in mins)',
         main = 'Histogram of waiting times')
  })
  
  output$contents <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    req(input$file1)
    
    df <- read.csv(input$file1$datapath,
                   header = input$header,
                   sep = input$sep,
                   quote = input$quote)
    
    if(input$disp == "head") {
      return(head(df))
    }
    else {
      return(df)
    }
    
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