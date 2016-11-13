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
  titlePanel("Predict weight from height"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        sliderInput("slider", "What is the height of the women!",58,72,value=65)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Predicted output from the model"),
       plotOutput("plot1"),
       h3("Prediction from the model"),
       textOutput("pred1")
      )
  )
))
