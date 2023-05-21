# Set the seed for reproducibility
set.seed(123)

# Number of trees
num_trees <- 30

# Generate random diameters between 8 and 20
diameters <- runif(num_trees, min = 8, max = 20)

# Calculate heights based on the non-linear relationship
heights <- diameters^2 * (75 - 50) / (20^2 - 8^2) + (50 - 8^2 * (75 - 50) / (20^2 - 8^2)) + runif(num_trees, min = 0, max = 75 - 50)

# Create a data frame with the results
tree_data <- data.frame(Tree_Number = 1:num_trees, Diameter = diameters, Height = heights)

# Print the tree data
print(tree_data)
