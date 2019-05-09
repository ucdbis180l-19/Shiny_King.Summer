#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$RicePlot <- renderPlot({
        
    pl <- ggplot(data = rice_data, aes(x = "Region", y = input$trait))
    pl <- pl + geom_boxplot()
    
  })
  
})
