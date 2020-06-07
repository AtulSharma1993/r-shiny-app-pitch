library(shiny)
library(rpart)
library(rpart.plot)

# Load data
data(iris)
data<-iris

# train model
tree <- rpart(Species ~ ., data = data, method = "class")
newdata <- NULL

# Create shiny server
shinyServer(function(input, output) {
  
  table <- reactive({
    newdata <- data.frame(
      Petal.Length = input$Petal.Length,
      Petal.Width = input$Petal.Width,
      Sepal.Length = input$Sepal.Length,
      Sepal.Width = input$Sepal.Width)
    if (is.data.frame(newdata) && nrow(newdata)!=0) 
      newdata
  })

  # Data filtering reaction on input parameters
  class <- reactive({
    newdata <- data.frame(
      Petal.Length = input$Petal.Length,
      Petal.Width = input$Petal.Width,
      Sepal.Length = input$Sepal.Length,
      Sepal.Width = input$Sepal.Width)
    if (is.data.frame(newdata) && nrow(newdata)!=0)
    {
      pred <-predict(object = tree, type="class", newdata = newdata)
      toupper(as.character(pred))
    } else
      "unknown"
  })
  
  # Plot rendering
  output$tree <- renderPlot({
    rpart.plot(tree)
  })
  
  # Data
  output$table <- renderTable({
    table()
  })
  
  # print class
  output$class <- renderText({
    class()
  })
  

  
})