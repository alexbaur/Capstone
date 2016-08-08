## Word Prediction Server
library(shiny)
library(knitr)
library(tm)
library(markdown)

shinyServer(
    function(input, output, session){
        
        predict <- reactive({
            wordpred(input$word)
        })
        
        observe({
            
            if (input$goButton == 0)
                
                return()
        
            output$predict <- renderText({
                input$goButton
                isolate(predict())
            })
        })

    })