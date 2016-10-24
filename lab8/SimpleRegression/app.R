library(shiny)

ui <- shinyUI(fluidPage(
  titlePanel("Simple Linear Regression"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "media",
                  label = "Explanatory Variable",
                  choices = c("TV", "Radio", "Newspaper"),
                  selected = "TV")
    ),
    
    mainPanel(
       plotOutput("scatterPlot")
    )
  )
))

server <- shinyServer(function(input, output) {
  path <- getwd()
  ad.data <- read.csv(paste0(path, "/Advertising.csv"))
  ad.data$X <- NULL
  
  output$scatterPlot <- renderPlot({
    plot(ad.data[, c(input$media, 'Sales')])
  })
})

shinyApp(ui = ui, server = server)

