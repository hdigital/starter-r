# An R project template · 📊

Run all R scripts and render all notebooks

```R
callr::rscript("utils/run-all.R", stdout="utils/run-all.log")  # R console
```

```sh
Rscript utils/run-all.R > "utils/run-all.log"  # terminal (local)

./utils/run-all-docker.sh                      # terminal (Docker)
```

## Install · ⚙️

### Local · 💻

Install, sync, update project R packages from `pkg.lock`:

```sh
Rscript utils/r-packages-install.R

Rscript utils/r-packages-update.R
```

### Codespace · 🛰️

Run in [Github Codespaces](https://docs.github.com/en/codespaces/getting-started/quickstart)

- open RStudio browser tab in _PORTS_ with 🌐 ('Open in Browser')
- user: _rstudio_ — password: _rstudio_
- see also [devcontainers-rstudio](https://github.com/revodavid/devcontainers-rstudio) and [R in Visual Studio Code](https://code.visualstudio.com/docs/languages/r)

### Docker · 🚢

Use [Docker](https://docs.docker.com/get-docker/) to run RStudio in a browser
with all dependencies.

<http://localhost:8787/>

```sh
docker-compose up -d  # start container in detached mode

docker-compose down   # shut down container
```

## License · ⚖️

[MIT](https://choosealicense.com/licenses/mit/) – Copyright (c) 2023 Holger Döring
