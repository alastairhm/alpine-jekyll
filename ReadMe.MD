# Jekyll Blog Docker image

See [Jekyll Home Page](https://jekyllrb.com/)

## Create New Blog

```bash
docker run -it -p 8080:80  -v $PWD/blog:/blog alastairhm/alpine-jekyll /create.sh mysite
```

## Run Existing Blog

```bash
docker run -it -p 8080:80 -v $PWD/blog/mysite:/blog alastairhm/alpine-jekyll
```
