library(shiny)
library(ggplot2)

ui <- fluidPage(

        sidebarLayout(

                # Inputs: Select variables to plot
                sidebarPanel(

                        # Select variable for y-axis
                        selectInput(
                                inputId = "y",
                                label = "Y-axis:",
                                choices = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"),
                                selected = "mpg"
                        ),
                        # Select variable for x-axis
                        selectInput(
                                inputId = "x",
                                label = "X-axis:",
                                choices = c("mpg", "cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am", "gear", "carb"),
                                selected = "cyl"
                        )
                ),

                # Output: Show scatterplot
                mainPanel(
                        h2("Scatterplot with different variables"),
                        p("Below you can see a scatterplot which plots 2 different variables from the mtcars dataset. In the side panel, you can choose the variables for the x- and y-axis."),
                        plotOutput(outputId = "scatterplot")

                )
        )
)
