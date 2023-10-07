# An R project template · 📊

Run all R scripts and render all notebooks

```R
callr::rscript("utils/run-all.R", stdout="utils/run-all.log")  # R console
```

```sh
Rscript utils/run-all.R > "utils/run-all.log"                  # terminal
```

## Install · ⚙️

### Local · 💻

Install all R packages project with `utils/packages-install.R`

### Docker · 🚢

Use [Docker](https://docs.docker.com/get-docker/) to run RStudio in a browser with all dependencies.

<http://localhost:8787/>

```sh
docker-compose up -d  # start container in detached mode

docker-compose down   # shut down container
```

## License · 💻

[MIT](https://choosealicense.com/licenses/mit/) – Copyright (c) 2023 Holger Döring
