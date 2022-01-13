# Author: Andrew Knittle
# A File designed to help analysis go by faster. 
# This includes common analysis methods that don't have to be repeated for every project.
# ---------------------------------------------------------------------------------------------------

# Make the current directory always the working directory
makeWorkingDirectory <- function(){
  setwd(dirname(rstudioapi::getSourceEditorContext()$path))
}

