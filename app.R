library(shiny)
library(reactable)
library(tidyverse)
library(janitor)
library(tidymodels)


ui <- fluidPage(
  includeMarkdown("Page1.md"),
  
  h1("Complete data set"),
  selectizeInput("colum", "Select column",
                 choices=c("Class", "Sex", "Age", "Survived")),

  tableOutput("class"),
  br(),
  br(),
  br(),
  reactableOutput("data_titanic"),
  selectizeInput("xvar", "Variable in x",
                 choices=c("Class", "Sex", "Age", "Survived")),
  selectizeInput("fillvar", "Variable in fill",
                 choices=c("Class", "Sex", "Age", "Survived")),
  plotOutput("plot"),
  selectizeInput("model_var", "Choose independent var",
                 choices=c("Class", "Sex", "Age")),
  tableOutput("model") ,
  h1("Tidymodels")
  
  
)



server <- function(input, output, session) {
  
  the_data <- readRDS("data.Rds")
  
  
  saveRDS(the_data, "data.Rds")
  
  output$data_titanic <- renderReactable({
    reactable(the_data)})
  
  output$class <- renderTable({
    the_data |> 
      tabyl(input$colum) |> 
      adorn_rounding(2)
      })
  
  output$plot <- renderPlot({
    the_data |> 
      ggplot(aes_string(x=input$xvar, 
                        group= input$fillvar, 
                        fill=input$fillvar)) +
      geom_bar(aes(y=..prop..), 
               position = "dodge", stat = "count") +
      geom_text(aes(label = scales::percent(..prop..), y= ..prop.. ), 
                stat= "count", vjust = -.1, 
                position = position_dodge(width=0.9)) +
      labs(y = "Percent", fill=paste0(input$fillvar), 
           x=paste0(input$xvar)) +
      scale_y_continuous(labels = scales::percent) +
      scale_fill_brewer(palette = 2)
  })
  

  model_data <- reactive({
    the_data |> 
    mutate(Survived=ifelse(Survived=="No",0,1)) |>
    select(Survived, input$model_var) |> 
    rename(Predictor=input$model_var)
    })
  
  output$model <- renderTable({
      glm(Survived ~ Predictor, data=model_data(), family = "binomial") |> 
      tidy(exponentiate=TRUE, conf.int=TRUE, conf.level=.95)
  })
  
  

}



shinyApp(ui, server)