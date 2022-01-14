# Author: Andrew Knittle
# A File designed to help analysis go by faster. 
# This includes common analysis methods that don't have to be repeated for every project.
# ---------------------------------------------------------------------------------------------------

# Make the current directory always the working directory
makeWorkingDirectory <- function(){
  setwd(dirname(rstudioapi::getSourceEditorContext()$path))
}

# Make Dummy data by numRows x (numInts + numFact)
# Number of numerical columns (numInts)
# Number of factorial columns (numFact)
# Pool of numerical ranges (intRanges)
# Pool of factorial levels (factLevels)
makeDummyDate <- function(numRows=1, numInts=0, numFact=0, intRanges=list(c(0,100)), factLevels=list(c(2))){
  # Make the dimension of columns
  numColumns=numInts + numFact
  if(numColumns == 0){
    stop("The data frame must have defined columns")
  }
  if(length(intRanges) != numInts){
    stop("The pool of ranges does not match the number of integer columns")
  }
  if(length(factLevels) != numFact){
    stop("The pool of factors does not match the number of factor columns")
  }
  # ----------------------------------------------------------------------------
  # Start making the numerical data
  
  # Start making the factor data
  
}












