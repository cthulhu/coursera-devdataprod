
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# main data source used in the project
d.in = read.csv("data.csv", header = TRUE, sep = ";")

shinyServer(function(input, output) {
 
  # reactive data input
  dataInput <- reactive({
    input$food.group
  })
  
  # piechart rendering depending on input data
  output$pie.protein <- renderPlot({

    pie(d.in[,dataInput()], labels = d.in$Country, main="Protein consumption per country for selected food group")

  })
  
  # dataset rendering
  output$dataset  <- renderTable({
    d.in
  })

})
