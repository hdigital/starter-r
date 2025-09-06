#!/usr/bin/env Rscript

# Install project dependencies with 'pak' package manager
# Scans project files for required packages and creates/maintains a lockfile

# install 'pak' to use modern package installer
if (!"pak" %in% installed.packages()) {
  install.packages(c("pak"), repos = getOption("repos")[[1]])
}

library(pak)

# get packages used in project folder
deps <- scan_deps()
deps_pkgs <- unique(deps$package)

# pin versions of project packages (if not pinned)
if (!file.exists("pkg.lock")) {
  lockfile_create(deps_pkgs)
}

# install (or update) project packages
tryCatch(
  lockfile_install(),
  error = function(cond) {
    message("Lockfile install failed:")
    message(conditionMessage(cond))
    lockfile_create(deps_pkgs)
    lockfile_install()
    NA
  }
)
