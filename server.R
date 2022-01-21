
download <- getURL("https://raw.githubusercontent.com/Momiji5459/Course-Project-Shiny-Application-and-Reproducible-Pitch/83ae5b4f632a3a8624e87f65394c9fe8e0d4185e/CVD.csv")
base <- read.csv2(text =download)

#install.packages("shiny")
function(input, output) {

    # Fill in the spot we created for a plot
    output$deaths <- renderPlot({

        # Render a barplot
        barplot(base[,input$Country],
                main=input$Country,
                ylab="Covid deaths per country",
                xlab="Day")
    })
}
