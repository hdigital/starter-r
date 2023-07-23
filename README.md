# An R project template · 📊

Run all R scripts and render all notebooks

```sh
Rscript z-run-all.R            # terminal
````

```R
callr::rscript("z-run-all.R")  # R console
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
