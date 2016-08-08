## Word Prediction UI
library(shiny)
library(knitr)
library(tm)
library(markdown)

shinyUI(fluidPage(
    fluidRow(
        column(width = 6, offset = 4,
               h3('Word Prediction App - Alex Baur'))),
    fluidRow(
        column(width=6,
               input <- textInput('word', label = h4('Enter your word, phrase, or sentence here:'), value = "Enter text here...", width = "100%"),
               actionButton('goButton', "Predict")
        ),
        column(width=6,
               h4('The next word is:'),
               h4(textOutput('predict'))
        )),
    
    br(),
    
    fluidRow(column(width=12,
                    tabsetPanel(
                        tabPanel('How to Use', includeMarkdown('how_to_use.Rmd')),
                        tabPanel('How it works', includeMarkdown('how_it_works.Rmd')),
                        tabPanel('N-grams', includeMarkdown('N-grams.Rmd')),
                        tabPanel('Markov Chains', includeMarkdown('Markov_chains.Rmd')),
                        tabPanel('Katz Back-off', includeMarkdown('Katz_backoff.Rmd')),
                        tabPanel('Handling Unknowns', includeMarkdown('Unknown_input.Rmd')),
                        tabPanel('Data', includeMarkdown('gramdata.Rmd'))
                    ))
    )))