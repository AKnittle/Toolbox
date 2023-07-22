# Author: Andrew Knittle
# A File designed to help graphing go by faster. 
# This includes common analysis methods that don't have to be repeated for every project.
# ---------------------------------------------------------------------------------------------------
library(ggplot2)
library(reshape2)


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

# Plot Correlation Matrix
plot_correlation <- function(df){
  # Convert factor variables to numeric
  df <- df %>% mutate_if(is.factor, as.numeric)
  
  # Calculate the correlation matrix (ignoring missing values)
  cor_matrix <- cor(df, use = "pairwise.complete.obs", method = "pearson")
  
  # Create a heatmap of the correlation matrix
  heatmap_data <- melt(cor_matrix)
  p <- ggplot(heatmap_data, aes(Var1, Var2, fill = value)) +
    geom_tile(color = "white") +
    scale_fill_gradient(low = "blue", high = "red") +
    labs(title = "Correlation Matrix Heatmap",
         x = "Variables",
         y = "Variables") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
  print(p)
}