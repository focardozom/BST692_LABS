##  Labs BST692: TITANIC dataset

### Lab1

**Objective:**

Build a shiny::UI (User Interface). 

---

**Step 1**

Copy the project *Shiny_labs* on RstudioCloud. 

**Step 2**

Create a `.md `file (go to file > New file > `Markdown File`).  
**Be aware it is a Markdown file, not an Rmarkdown file.**

**Step 3**

Save the `.md` file. (Name it 'page1')

**Step 4**

Open this link [webpage](https://rpubs.com/focardozom2/903731). 

**Step 5**

Your homework is to reproduce the webpage in your markdown file (page1.md). 

For example:

This code: `# Titanic: Who Survived?` 

Produce this output:

# Titanic: Who Survived?

And this code: `* Titanic: Who Survived?` 

Produce this output:

* Titanic: Who Survived?

You can use the [Markdown Cheat Sheet](https://www.markdownguide.org/cheat-sheet/) and [RMarkdown Cheat Sheet](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) to see style options.

The image is located in your RstudioCloud ('titanic.png')

Save the `.md` file.

**Step 6**

In your project, create a new R script file (go to file > New file > `R script`)

Type in the new file the following snippet `shinyap` (Remember to press tab before you finish typing to call the snippet). 

**Step 7**

Select everything and run your code (You can use `command + a`; then ` command + return` to look like a pro).

**Step 8**

**Congratulations**, you created a shiny app. 

Save your file and name it `app`. 

**Step 9**

In your `.app`, include the `.md` file in the UI object (everything inside the `fluidPage()` will be part of your user interface). The `includeMarkdown()` function will read your `.md`, and deployed it (for example `includeMarkdown("???")`)

**Step 10** 

Click `Run app` bottom to see magic. 




