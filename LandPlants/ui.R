####################################################################
library(shiny)
library(ape)
####################################################################
widget_style <-
  "display: inline-block;
  vertical-align: text-top;
  padding: 7px;
  border: solid;
  border-width: 1px;
  border-radius: 4px;
  border-color: #CCC;"
shinyUI(bootstrapPage(
  headerPanel("Land Plant Tree of Life"),
  sidebarPanel(
    div(style = widget_style,
    sliderInput("obs", 
                "Tips to exclude:", 
                min = 0, 
                max = 34, 
                value = 10))
  ),
  wellPanel(
    plotOutput("distPlot", height="1000px")
  )
))

