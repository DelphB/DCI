addSubjectID = function() {
  
  df$SubjectID = 1:2000
  
}

labelDataToPlot = function() {
  
  x = t(df)
  #fix(x)
  #row.names(x)
  
  #length(row.names(x))
  #length(x[,1])
  #dim(x)
  
  y = matrix(row.names(x))
  #dim(y)
  
  z = cbind(x, y)
  #fix(z)
  
  #dim(z)
  
  z = data.frame(z)
  z$col1 = sub("X.", "", z[,2001])
  
  z$DCI.ID = z$col1
  z$col1 = NULL
  
  test = merge(z, extendedData)
  #fix(test)
  #dim(test)
  
  test = data.frame(test)
  
  test <- data.frame(lapply(test, as.character), stringsAsFactors=FALSE)
  
  write.csv(test, "data/test.csv")
  
  ttest = t(test)
  #fix(ttest)
  
  colnames(ttest) = ttest[2012,]
  
  write.csv(ttest, "data/ttest.csv")

}

demographicsToTop = function() {
  
  ttest <- read.csv("data/ttest.csv", header=FALSE)
  
  #Use extendedData$Presentation.Order
  ...
  
  ttest = ttest[]
  
}

addOptionText = function() {
  
  
  
}
