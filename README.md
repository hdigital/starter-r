# An R project template · 📊

Run all R scripts and render all notebooks

```R
callr::rscript("z-run-all.R", stdout="z-run-all.log")  # R console
```

```sh
Rscript z-run-all.R > "z-run-all.log"                  # terminal
```

## Install · ⚙️

Use [Docker](https://docs.docker.com/get-docker/) to run RStudio in a browser with all dependencies.

<http://localhost:8787/>

```sh
docker-compose up -d  # start container in detached mode

docker-compose down   # shut down container
```

## License · 💻

[MIT](https://choosealicense.com/licenses/mit/)
