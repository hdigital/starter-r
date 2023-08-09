library(callr)
library(fs)
library(purrr)


# package versions project into 'renv.lock' (no renv-project used)
renv::snapshot(prompt = FALSE)

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
if (file_exists("Rplots.pdf")) {
  file_delete("Rplots.pdf")
}

# add session info (load all project packages)
conflicted::conflicts_prefer(callr::run)
map_lgl(dplyr::pull(renv::dependencies(), Package), require)
sessionInfo()
