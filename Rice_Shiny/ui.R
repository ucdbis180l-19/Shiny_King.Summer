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
  
  helpText("This website has everything you need to now about rice!")
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("trait",
                    "Choose a trait to plot with Regions:",
                    c("Protein.content",
                      "Seed.length",
                      "Seed.width",
                      "Amylose.content",
                      "Alu.Tol",
                      "Plant.height",
                      "Panicle.length",
                      "Seed.volume")),
       
       selectInput("Plots",
                    "Choose a plot:",
                    c("BoxPlot",
                      "Histogram",
                      "Violin",
                      "ScatterPlot")),
       
       selectInput("xtrait",
                    "Choose a trait (x-axis) for Scatterplot:",
                    c("Protein.content",
                      "Seed.length",
                      "Seed.width",
                      "Amylose.content",
                      "Alu.Tol",
                      "Plant.height",
                      "Panicle.length",
                      "Seed.volume")),
       
       selectInput("ytrait",
                    "Choose a trait (y-axis) for Scatterplot:",
                    c("Protein.content",
                      "Seed.length",
                      "Seed.width",
                      "Amylose.content",
                      "Alu.Tol",
                      "Plant.height",
                      "Panicle.length",
                      "Seed.volume")),
       
       selectInput("ztrait",
                   "Choose a trait (color) for Scatterplot:",
                   c("Protein.content",
                     "Seed.length",
                     "Seed.width",
                     "Amylose.content",
                     "Alu.Tol",
                     "Plant.height",
                     "Panicle.length",
                     "Seed.volume"))
       
       ),
  
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("Plot")
    )
  )
))
