#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mtcars histogram "),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("ColumnNames","Select Column to create a Histogram", choices = names(mtcars))
                   
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("mtcars1")
    )
  )
))
