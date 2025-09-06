#!/usr/bin/env Rscript

# install or skip installing project packages
tryCatch(
  pak::lockfile_install(),
  error = function(cond) {
    message("Lockfile install failed:")
    message(conditionMessage(cond))
    NA
  }
)
