#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(stringr)
cocktail <- read.csv("cocktail.csv")
# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Cocktail Finder"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            textInput("text", label = h3("Enter ingredients here"), value = "Enter text..."),
            hr(),
            fluidRow(column(3, verbatimTextOutput("value")))
        ),

        # Show a plot of the generated distribution
        mainPanel(
          "Main Panel"
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$value <- renderPrint({ input$text })
    
}

# Run the application 
shinyApp(ui = ui, server = server)
