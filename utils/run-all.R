library(callr)
library(fs)
library(purrr)

# run R scripts in subfolders
r_scripts <- dir_ls(".", glob = "*.R", recurse = 1)
r_scripts <- r_scripts[!stringr::str_starts(r_scripts, "utils/")]
map(r_scripts, rscript, spinner = TRUE)

# render RMarkdown notebooks in subfolders
rmd_scripts <- dir_ls(".", glob = "*.Rmd", recurse = 1)
map(rmd_scripts, rmarkdown::render)

# render Quarto notebooks in project folder
system("quarto render *.qmd")

# remove Rplots created with print()
if(file_exists("Rplots.pdf")) {
  file_delete("Rplots.pdf")
}

# add session info: R version, tidyverse packages, platform
library(tidyverse)
sessionInfo()
