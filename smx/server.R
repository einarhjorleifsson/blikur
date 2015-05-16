# server.R

library(smx)
attach("data/smb.rda")
library(shiny)



shinyServer(
  function(input, output) {
    
    # Fill in the spot we created for a plot
    output$map <- renderPlot({
      
      # Render a ggplot
      smx_4plot(input$var,smb,std=smx_standards)
    })
    
  }
)
