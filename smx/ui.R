# ui.R

shinyUI(fluidPage(
  titlePanel("Survey indices"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Plot survey indices for different stocks"),
      
      selectInput("var", 
                  label = "Choose a stock",
                  choices = c("torskur", "ysa",
                              "ufsi", "karfi"),
                  selected = "torskur")#,
      
    #  sliderInput("range", 
    #              label = "Range of interest:",
    #              min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(plotOutput("map"))
  )
))
