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
rice_data <- read_csv("/home/ubuntu/Shiny_King.Summer/Rice_Shiny/Ricepop.csv")



# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$Plot <- renderPlot({
    if(input$Plots == "BoxPlot")   
    {pl <- ggplot(data = rice_data, aes_string(x = "Region", y = input$trait))
    pl <- pl + geom_boxplot()
    pl}
    
    else if (input$Plots == "Histogram")
    {hist <- ggplot(data = rice_data, aes_string(x = input$trait))
    hist <- hist + geom_histogram()
    hist}
    
    else if (input$Plots == "Violin")
    {vio <- ggplot(data = rice_data, aes_string(x = "Region", y = input$trait))
    vio <- vio + geom_violin()
    vio}
    
    else if (input$Plots == "ScatterPlot")
    {scatter <- ggplot(data = rice_data, aes_string(x = input$xtrait, y = input$ytrait, color = input$ztrait))
     scatter <- scatter + geom_point()
     scatter}
  })
  
})
