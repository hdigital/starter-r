#!/usr/bin/env Rscript

# Install packages from lockfile (for Docker builds)
# Handles package installation failures with 'pak' gracefully

# install or skip installing project packages
tryCatch(
  pak::lockfile_install(),
  error = function(cond) {
    message("Lockfile install failed:")
    message(conditionMessage(cond))
    NA
  }
)
