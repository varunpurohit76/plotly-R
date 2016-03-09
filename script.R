################## reading the input file
input <- read.table(
  "SCONES_test.tsv",
  sep="\t", 
  header=TRUE)


################# calculating the log and logratio
input$ratio <- input$testSample2/input$testSample1
input$logratio <- log(input$ratio) 


library(plotly)
plot_ly(input, 
        x = start, 
        y = logratio,
        mode = "markers", 
        symbol = chr, 
        symbols = c("triangle-down","dot"))
