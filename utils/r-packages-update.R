#!/usr/bin/env Rscript

library(pak)

# get and install packages used in project folder
deps <- scan_deps()
deps_pkgs <- unique(deps$package)

pkg_install(deps_pkgs, ask = FALSE, upgrade = TRUE)

# create lock file of versions for all packages
lockfile_create(deps_pkgs)
lockfile_install(update = TRUE)
