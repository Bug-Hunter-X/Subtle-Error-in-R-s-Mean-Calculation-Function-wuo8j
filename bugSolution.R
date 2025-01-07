```R
# Corrected function to calculate the mean
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  }
  sum_x <- sum(x, na.rm = TRUE) # Sum elements, removing NA values
  mean_x <- sum_x / length(x[!is.na(x)]) # Calculate mean using correct length
  return(mean_x)
}

# Example usage
my_vector <- c(1, 2, 3, NA, 5)
result <- calculate_mean(my_vector)
print(result) # Correct output
```