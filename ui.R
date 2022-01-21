library(shiny)
library (RCurl)

download <- getURL("https://raw.githubusercontent.com/Momiji5459/Course-Project-Shiny-Application-and-Reproducible-Pitch/83ae5b4f632a3a8624e87f65394c9fe8e0d4185e/CVD.csv")
base <- read.csv2(text =download)

# Use a fluid Bootstrap layout

fluidPage(
    # Give the page a title
    titlePanel("Covid deaths per country"),

    # Generate a row with a sidebar
    sidebarLayout(
        # Define the sidebar with one input
        sidebarPanel(p(strong("The documentation:",style="color:Red"),
        a("User Info Page",href="https://rpubs.com/yvesmorel17/855937")),
                     selectInput("Country", "Country:",choices=colnames(base[-1])),
                     hr(),
                     helpText("Covid deaths")
        ),

        # Create a spot for the barplot
        mainPanel(
            plotOutput("deaths")
        )

    )
)
