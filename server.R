library(shiny)
library(ggplot2)

# Load data
load(file="data.RData")

shinyServer(
  function(input, output) {
    output$application = renderPlot ({
      app = input$dat
      typ = input$typ
      date = iput$date
      qplot()
    })
  }
)
