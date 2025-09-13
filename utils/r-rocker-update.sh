#!/bin/bash

# Update R packages to latest versions in containerized environment
# Creates and manages Rocker container for package updates

set -e

docker run \
  --detach \
  --platform linux/amd64 \
  --name rocker_latest \
  --volume .:/home/rstudio/ \
  rocker/tidyverse:latest

docker exec rocker_latest /bin/bash -c \
  "cd /home/rstudio/ && \
   install2.r pak && \
   Rscript utils/r-packages-update.R && \
   Rscript utils/run-all.R"

printf "\n\n"
docker exec rocker_latest Rscript -e "R.version.string"
printf "\n🚨 · Update R version Rocker in Dockerfile."
printf "\n💡 · Commit message — Update to R 4.x.x\n\n"

docker rm --force rocker_latest
