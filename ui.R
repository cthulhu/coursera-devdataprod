
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Protein consumption in Europe"),

  # Sidebar with a food group selector
  sidebarLayout(
    sidebarPanel(
      radioButtons("food.group",
                  "Select food group:",
                  c("RedMeat", "WhiteMeat", "Eggs", 
                    "Milk", "Fish", "Cereals", "Starch", "Nuts", "FruitsAndVegetables"))
    ),

    # Show a plot and some information
    mainPanel(
      h3("Protein consumption per country"),
      p("Click on food group to see protein consumption per country"),
      plotOutput("pie.protein"),
      h3("Dataset used in the application"),
      tableOutput("dataset"),
      p("More Information about data source: http://lib.stat.cmu.edu/DASL/Datafiles/Protein.html")
    )
  )
))
