#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$mtcars1<- renderPlot({
    mtcars1<-mtcars[,input$ColumnNames]
    xlab <- input$ColumnNames
    hist(mtcars1, xlab = xlab,  main = paste("Histogram of" , xlab), density = 24, 
         col = "blue",
         border = "red",
         labels=TRUE,
         angle = 180
         )
    

      })
  
})
