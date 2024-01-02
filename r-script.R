# R Script – Simple R script template
# Copyright (c) [year] [fullname] · MIT License · https://choosealicense.com

library(tidyverse)


## Data analysis ----

# create scatter plot of horsepower and miles per gallon for cars data set
ggplot(datasets::mtcars, aes(x = hp, y = mpg)) +
  geom_point(alpha = 0.5) +
  geom_smooth(se = FALSE)
