# deno_doc
unofficial document for deno
```
docker run -it --name deno_doc -p 8089:8000 -v $PWD/:/home deno_doc
cd site
mkdocs serve --dev-addr=0.0.0.0:8000
```