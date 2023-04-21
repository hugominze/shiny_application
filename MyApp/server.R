server <- function(input, output, session) {
        output$scatterplot <- renderPlot({
                ggplot(data = mtcars, aes_string(x = input$x, y = input$y)) +
                        geom_point()
        })
}
