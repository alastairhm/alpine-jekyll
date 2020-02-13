# Jekyll Blog Docker image

See [Jekyll Home Page](https://jekyllrb.com/)

## Create New Blog

```bash
docker run -it -e 8080:80  -v $PWD/blog:/blog test jekyll new my-site
```

## Run Existing Blog

```bash
docker run -it -e 8080:80 -v $PWD/blog/my-site:/blog alastairhm/jekyll
```
