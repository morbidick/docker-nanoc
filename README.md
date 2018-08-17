# Nanoc docker image

[Nanoc](https://nanoc.ws/) is a static-site generator, fit for building anything from a small personal blog to a large corporate website.

This image contains Nanoc and a few extra gems that help to generate markdown including code snippets:

* kramdown
* coderay

Source image is `ruby:latest`

## Usage

```
docker run -it --rm -v $PWD:/app morbidick/nanoc
```