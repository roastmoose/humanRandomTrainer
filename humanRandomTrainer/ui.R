# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Random Numbers!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("vals",
                  "Enter a really large random number:",
                  value = "1234567890")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      fluidRow(
        splitLayout(cellWidths=c("50%","50%"),plotOutput("yourPlot"),plotOutput("serverPlot")))
      )
  ),
  fluidRow(
    column(12,plotOutput("digramFreq"))
  )
))