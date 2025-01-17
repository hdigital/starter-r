#!/usr/bin/env Rscript

library(pak)

# get and install packages used in project folder
deps <- unique(renv::dependencies()[["Package"]])
pkg_install(deps, ask = FALSE, upgrade = TRUE)

# create lock file of versions for all packages
lockfile_create(deps)
lockfile_install(update = TRUE)
