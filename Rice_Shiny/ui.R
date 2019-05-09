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
read_csv("/home/ubuntu/Downloads/RiceSNPData/RiceDiversity.44K.MSU6.Phenotypes.csv")


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice SNP Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait",
                    "Choose a trait to display:",
                    c("Region",
                      "Protein Content",
                      "Seed Length",
                      "Seed Width"
                      ))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
