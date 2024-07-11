#!/bin/bash

# Run and render all project R scripts in Rocker container

set -e

docker compose up -d

docker exec starter-r-rocker-1 \
  /bin/bash -c \
  "cd /home/rstudio/ && \
   Rscript utils/run-all.R"

docker compose down
