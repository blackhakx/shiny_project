library(shiny)

# data1 <- read.csv("Ass1Data.csv")



fluidPage(
  titlePanel("DATA423 Assignment 1"),
  
  tabsetPanel(
    tabPanel("Data",
             h2("Data"),
             tabsetPanel(
               tabPanel("Summary",
                 h3("Summary"),
                 verbatimTextOutput(outputId = "Summary3"),
                 verbatimTextOutput(outputId = "Summary1"),
                 verbatimTextOutput(outputId = "Summary2")
               ),
               tabPanel("Table",
                        h3("Raw Data Table"),
                        DT::dataTableOutput(outputId = "TableData1")
                        )
              )
             )
  )
)
