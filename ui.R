library(shiny)

# Define UI 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("The Iris Species predictor by D.V."),
   
  # Left panel with control elements
  sidebarPanel(
    
    sliderInput("Petal.Length",label = "Petal Length",
                min = 1.0, max = 6.9, value = 2.2),
    sliderInput("Petal.Width",label = "Petal Width",
                min = 0.1, max = 2.5, value = 1.0),
    sliderInput("Sepal.Length",label = "Sepal Length",
                min = 4.3, max = 7.9, value = 5.3),
    sliderInput("Sepal.Width",label = "Sepal Width",
                min = 2.0, max = 4.4, value = 2.7),
    h6("You can familiar with ui.R and server.R in github: ",a(href="http://github.com/Ellariel/r-shiny-app-pitch", "github.com/ellariel/r-shiny-app-pitch"))
    ),
  
  # Right panel
  mainPanel(
    h4("You need to chooise four measurements of your Iris:"),
    img(src='iris.png', width=450, align = "center"),
    h4("Your Iris:"),
    tableOutput("table"),
    h4("It is:"),
    h3(textOutput("class")),
    h4("Our classification tree:"),
    plotOutput("tree")
  )
))