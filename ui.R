library(shiny)

# Generate data
source("generate_data.R")
## Save it
save(data, file="data.RData")

# Get different values for the input
applications = unique(application)
types = unique(type)


shinyUI(pageWithSidebar(
  headerPanel("Cases"),
  sidebarPanel(
    h4('Application'),
    selectInput('app', 'Service:', applications, multiple = TRUE),
    h4('Type of case'),
    selectInput('typ', 'Type of case:', types, multiple = TRUE, selected=types),
    h4('Open date'),
    dateInput("date", 'From:')
  ),
  mainPanel(
    h2('Cases over time, by application'),
    h2('Cases over time, by type')
  )
))
