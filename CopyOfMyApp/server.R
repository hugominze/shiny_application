library(shiny)
shinyServer(function(input, output) {
        model1 <- lm(mpg ~ cyl, data = mtcars)




        model1pred <- reactive({
                cylInput <- input$slidercyl
                predict(model1, newdata = data.frame(cyl = cylInput))
        })


        output$plot1 <- renderPlot({
                cylInput <- input$slidercyl




                plot(mtcars$cyl, mtcars$mpg, xlab = "cyl",
                     ylab = "mpg", bty = "n", pch = 16,
                     xlim = c(4, 8), ylim = c(10, 35))
                if(input$showModel1){
                        abline(model1, col = "red", lwd = 2)
                }
                points(cylInput, model1pred(), col = "red", pch = 16, cex =2)
        })




        output$pred1 <- renderText({
                model1pred()
        })





})
