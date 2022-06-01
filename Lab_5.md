##  Labs BST692: TITANIC dataset

---

### Lab5

#### Objective:

Classification with tidymodels 

#### Step 1

#### <mark>Go to UI:</mark>

In your UI, create a selectizeInput. 

* Label it: "Did survived?"

Hint: 

> You can use in choice option "Yes"=1, "No"=0

#### Step 2

In your UI, create a `tableOutput`

#### Step 3

#### <mark>Go to server:</mark>

#### Step 4

Add to the **reactive** object a new column called `is_alive`. 

* is_alive is a factor() with levels c("0","1")
* relevel() is_alive. Use for the ref argument ???$???
* Keep Survived, is_alive, input$model_var in the reactive object
 

**Hint:**

> `mutate` create columns


#### Step 5

In your server, create an `output$` object containing a new table with the results of `is_alive` ~ `Predictor`. Use `tidymodels` sintax to estimate the coefficients. In the table, use exponentiated coefficients and include the confidence interval (95%). Make the pvalues pretty. 


```

???() |> 
      ???(is_alive ~ Predictor, data=???) |> 
      tidy(exponentiate=???, ???=TRUE) |> 
      mutate(p.value = ???)

```

**Hint:**

> scales::pvalue() to format pvalues

#### Step 6

Save the app.R file

#### Step 7

Click `Run app` button to deploy your shiny app. 


