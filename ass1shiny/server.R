

library(shiny)
library(tidyverse)
library(skimr)
library(DT)

data1 <- read.csv("Ass1Data.csv")

data1$Operator <- as.factor(data1$Operator)
data1$Priority <- as.factor(data1$Priority)
data1$Price <- as.factor(data1$Price)
data1$Temp <- as.factor(data1$Temp)
data1$Location <- as.factor(data1$Location)
data1$Agreed <- as.factor(data1$Agreed)
data1$State <- as.factor(data1$State)
data1$Speed <- as.factor(data1$Speed)
data1$Duration <- as.factor(data1$Duration)
data1$Class <- as.factor(data1$Class)
data1$Surface <- as.factor(data1$Surface)
data1$Date <- as.Date(data1$Date, format = "%Y-%m-%d")

# Define server logic required to draw a histogram
function(input, output, session) {

    output$Summary1 <- renderPrint({
      summary(as.data.frame(data1))
    })
    output$Summary2 <- renderPrint({
      glimpse(data1)
    })
    output$Summary3 <- renderPrint({
    })
    
    output$TableData1 <- DT::renderDataTable(
      datatable(data = as.data.frame(data1),
                options = list(
                  lengthMenu = list(c(10, 25, 50, 100, -1), c('10', '25', '50', '100', 'All')),
                  pageLenth = 10
                )
                )
    )
}    

