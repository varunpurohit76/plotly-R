WD <- getwd()
setwd(WD)

################## reading the input file
input <- read.table(
  "SCONES_test.tsv",
  sep="\t", 
  header=TRUE)


################# calculating the log and logratio
input$ratio <- input$testSample2/input$testSample1
input$logratio <- log(-1 * input$ratio) 

# plotly for effecient and interactive graphs
# markers according to chr
library(plotly)
plot_ly(input, 
        x = start, 
        y = logratio,
        mode = "markers", 
        symbol = chr, 
        symbols = c("triangle-down","dot"))
