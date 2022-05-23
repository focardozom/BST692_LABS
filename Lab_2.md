##  Labs BST692: TITANIC dataset

---

### Lab2

#### Objective:

Import data, create a table and reactable in Shiny 

#### Step 1

Open the project *Shiny_labs* on Rstudio.Cloud. 

#### Step 2

Clone this GitHub repo https://github.com/focardozom/BST692_LABS

![](img/img0.png)

#### Step 3

Open the `app.R` file

#### Step 4

Import the `Titanic` data into your shiny.

Save the data into an object called 'the_data'. **Be aware that the `Titanic` data set is in weighted format**.  To make analyses easier, you want to convert the data set to have one record per person.

> `the_data <- ???`

**Hints:**

> data("dataset_name") # this function loads the data in the R enviroment  
> as_tibble() # To create a tibble  
> uncount()   # To unnest/ungroup/unweighted or exand the dataset  


#### Step 5

#### <mark>Go to server:</mark>

In your server, create a `reactable` object to display the data set. 

It should look like this:

![](img/img1.png)

**Hints:**

> output$??? <-  
> renderReactable()  
> reactable()  


#### Step 6

In your server, create a table object to display the count of passengers for each class and crew.

It should look like this:

![](img/img2.png)


**Hints:**  

> output$???  <-  
> renderTable({})  
> tabyl(Class)  
> adorn_rounding(2)  

#### Step 7

#### <mark>Go to UI:</mark>

In your UI, create an output object of class `table`. 

Hints:

> tableOutput("???")  
> [Shiny Cheat Sheet](https://shiny.rstudio.com/images/shiny-cheatsheet.pdf)


#### Step 8


In your UI, create an output object of class `reactable`

Hints:

> reactableOutput("???")

#### Step 9

Save the app.R file

#### Step 10

Click `Run app` button to deploy your shiny app. 




