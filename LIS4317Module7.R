#loading the libraries and dataset
library(ggplot2)
install.packages("gridExtra")
library(gridExtra)
data("mtcars")


# Create scatter plots to compare variables
p1 <- ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point() + 
  theme_minimal() +
  ggtitle("Weight vs MPG")

p2 <- ggplot(mtcars, aes(x=hp, y=mpg)) + 
  geom_point() + 
  theme_minimal() +
  ggtitle("Horsepower vs MPG")

p3 <- ggplot(mtcars, aes(x=disp, y=mpg)) + 
  geom_point() + 
  theme_minimal() +
  ggtitle("Displacement vs MPG")

p4 <- ggplot(mtcars, aes(x=cyl, y=mpg)) + 
  geom_point() + 
  theme_minimal() +
  ggtitle("Cylinders vs MPG")

# Arrange the plots in a grid
grid.arrange(p1, p2, p3, p4, ncol=2)


#Now based on Few's recomendations 

scatter_mpg_vs_cyl <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_point(aes(color = factor(cyl)), size = 3, alpha = 0.7) +
  labs(title = "MPG vs. Number of Cylinders", x = "Number of Cylinders", y = "Miles Per Gallon") +
  theme_minimal() +
  scale_color_discrete(name = "Cylinders") +
  scale_x_continuous(breaks = seq(4, 8, by = 1)) + # consistent intervals
  scale_y_continuous(breaks = seq(10, 35, by = 5)) # consistent intervals

scatter_disp_vs_mpg <- ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point(aes(color = factor(cyl)), size = 3, alpha = 0.7) +
  labs(title = "MPG vs. Displacement", x = "Displacement (cu.in)", y = "Miles Per Gallon") +
  theme_minimal() +
  scale_color_discrete(name = "Cylinders") +
  scale_x_continuous(breaks = seq(100, 500, by = 50)) + # consistent intervals
  scale_y_continuous(breaks = seq(10, 35, by = 5)) # consistent intervals

scatter_hp_vs_mpg <- ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(aes(color = factor(cyl)), size = 3, alpha = 0.7) +
  labs(title = "MPG vs. Horsepower", x = "Horsepower", y = "Miles Per Gallon") +
  theme_minimal() +
  scale_color_discrete(name = "Cylinders") +
  scale_x_continuous(breaks = seq(50, 350, by = 50)) + # consistent intervals
  scale_y_continuous(breaks = seq(10, 35, by = 5)) # consistent intervals

# Adding a scatter plot for weight (wt) vs mpg
scatter_wt_vs_mpg <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(aes(color = factor(cyl)), size = 3, alpha = 0.7) +
  labs(title = "MPG vs. Weight", x = "Weight (1000 lbs)", y = "Miles Per Gallon") +
  theme_minimal() +
  scale_color_discrete(name = "Cylinders") +
  scale_x_continuous(breaks = seq(1.5, 5.5, by = 0.5)) + # consistent intervals
  scale_y_continuous(breaks = seq(10, 35, by = 5)) # consistent intervals

# Arrange the plots in a grid
grid.arrange(scatter_mpg_vs_cyl, scatter_disp_vs_mpg, scatter_hp_vs_mpg, scatter_wt_vs_mpg, ncol = 2)





