#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice SNP Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait",
                    "Choose a trait to display:",
                    c(
                      "Protein.content",
                      "Seed.length",
                      "Seed.width",
                      "Amylose.content",
                      "Alu.Tol",
                      "Plant.height",
                      "Panicle.length",
                      "Seed.volume"
                      ))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("RicePlot")
    )
  )
))
