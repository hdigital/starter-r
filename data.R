# Create datasets used in project from source files in "data-raw" folder, ignored by git.
# Save data in "data" folder. Check user license before sharing.

library(tidyverse)


## Dataset ----

dt_raw <- read_csv("data-raw/dt_source.csv")
dt <- dt_raw
write_csv(dt, "data/dt_clean.csv")
