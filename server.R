library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output){
      model1 <- lm(weight~height, data=women)
      
     model1pred <- reactive({
          heightInput <- input$slider
          predict(model1, newdata=data.frame(height=heightInput))
      })
     output$plot1 <- renderPlot({
            data("women")
            heightInput <- input$slider
            plot(women$height, women$weight,xlab="Height of the women", ylab="Weight of womenr")
            abline(model1,col="red", lwd=2)
            points(heightInput, model1pred(), col="red", pch="red", cex=2)
      })
     output$pred1 <- renderText({
         model1pred()
         
     })
})
