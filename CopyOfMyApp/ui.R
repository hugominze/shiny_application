library(shiny)
shinyUI(fluidPage(
        titlePanel("Predict mpg from cyl"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("slidercyl", "What is the cyl of the car", 4, 8, value = 4, step=2),
                        checkboxInput("showModel1", "Show/Hide regression line", value = TRUE)
                ),
                mainPanel(
                        h3("How to use this app:"),
                        p("1. Use the slider in the side panel to predict mpg (miles per gallon) from cyl (number of cylinders) based on the data in the mtcars dataset."),
                        p("2. Below the slider you are able to check wether you want the see the calculated regression line."),
                        p("3. The red line/dot shows the predicted miles per gallon from the number of cylinders. Below the diagram, you can find the calculated predicted mpg."),
                        plotOutput("plot1"),
                        h3("Predicted MPG from lm(mpg ~ cyl, data = mtcars):"),
                        textOutput("pred1")
                )
        )
))
