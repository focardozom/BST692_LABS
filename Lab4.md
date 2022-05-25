##  Labs BST692: TITANIC dataset

---

### Lab4

#### Objective:

Include reactive objects, plots, and models in Shiny 

#### Step 1

Open the project *Shiny_labs* on Rstudio.Cloud. 

#### Step 2

Pull GitHub repo https://github.com/focardozom/BST692_LABS. In the `terminal` type: git pull

#### Step 3

#### <mark>Go to UI:</mark>

In your UI, create two selectizeInput objects. 

* Label the first: "Variable in x", and name it `xvar`
* Label the second: "Variable in fill", and name it `fillvar`

The choices for both are: "Class", "Sex", "Age", "Survived"

#### Step 4

In your UI, create a slot for a plot called `plot`

#### Step 5

In your UI, create a selectizeInput object to select the model predictors and name it `model_predictor`

**Hint:**

> **Choices:** the dependent variable is `Survived`

#### Step 6

In your UI, create a slot for a table called `model_results`

#### Step 7

#### <mark>Go to server:</mark>

In your server, create an `output$` object containing the following code. Replace the `???` with the function needed. 

```
???({
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
      scale_fill_brewer(palette = "Paired")
  })
```
**Hint:**

> Render function for graphs

#### Step 6

In your server, create a **reactive** `output$` object containing the following object. Also, repalce the `???` with the correct word.
 

```
    the_data |> 
    mutate(Survived=ifelse(Survived=="No",0,1)) |> 
    select(Survived, ???$model_predictor) |> 
    rename(Predictor=???$model_predictor)

```


**Hint:**

> `model_predictor` contains information provided by the user


#### Step 7

In your server, create an `output$` object containing a table with the results of your model. Replace the `???` with the correct dataset. 

```

glm(Survived ~ Predictor, data=???, family = "binomial") |> 
      tidy(exponentiate=T, conf.int=T, conf.level=.95)

```

**Hint:**

> This is an essential part of reactive objects: `()` 

#### Step 8

Save the app.R file

#### Step 9

Click `Run app` button to deploy your shiny app. 


