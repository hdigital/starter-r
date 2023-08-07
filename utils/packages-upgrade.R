# get packages used in project folder
deps <- unique(renv::dependencies()[["Package"]])

# upgrade project packages
pak::pkg_install(deps, ask = FALSE, upgrade = TRUE)

# create lock file of versions for all packages
renv::snapshot()
