#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

shinyUI(
  navbarPage("Shiny Application for mtcars Data",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel(h4("The relationship between Number of Cylinder (cyl), Gross Horsepower (hp), transmission (am) and miles per gallon (MPG)")),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Gross horsepower" = "hp",
                                          "Transmission" = "am"
                                          
                                        )),
                            
                            checkboxInput("outliers", "Show/Hide BoxPlot's outliers", TRUE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             )
  )
)
