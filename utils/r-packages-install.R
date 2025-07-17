#!/usr/bin/env Rscript

# install 'pak' to use modern package installer
if (!"pak" %in% installed.packages()) {
  install.packages(c("pak"), repos = getOption("repos")[[1]])
}

library(pak)

# get packages used in project folder
get_dependencies <- \() unique(renv::dependencies()[["Package"]])

# pin versions of project packages (if not pinned)
if (!file.exists("pkg.lock")) {
  lockfile_create(get_dependencies())
}

# install (or update) project packages
tryCatch(
  lockfile_install(),
  error = function(cond) {
    message("Lockfile install failed:")
    message(conditionMessage(cond))
    lockfile_create(get_dependencies())
    lockfile_install()
    NA
  }
)
