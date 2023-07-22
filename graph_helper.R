# Author: Andrew Knittle
# A File designed to help graphing go by faster. 
# This includes common analysis methods that don't have to be repeated for every project.
# ---------------------------------------------------------------------------------------------------

# Plot histograms for each factor given in the list and differentiate between cases
plot_histograms <- function(df, factor_cols, numeric_col) {
  for (col in factor_cols) {
    p <- ggplot(df, aes_string(x = numeric_col, fill = col)) +
      geom_histogram(position = "identity") +
      labs(title = paste("Histogram of", col, "against", numeric_col),
           x = numeric_col,
           y = "Frequency") +
      theme_bw()
    
    # Print the histogram for each factor variable
    print(p)
  }
}