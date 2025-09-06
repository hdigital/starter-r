#!/bin/bash

# Execute complete R project workflow using Docker containers
# Runs all R scripts and renders notebooks in a Rocker environment

set -e

docker compose up -d

docker exec rocker-starter \
  /bin/bash -c \
  "cd /home/rstudio/ && \
   Rscript utils/run-all.R > 'utils/run-all.log'"

docker compose down
