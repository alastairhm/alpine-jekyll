FROM ruby:alpine
MAINTAINER Alastair Montgomery <alastair@montgomery.me.uk>

RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev && \
  rm -rf /var/cache/apk/* && \
  gem install jekyll && \
  mkdir -p /blog

VOLUME ["/blog"]
WORKDIR /blog

EXPOSE 80

CMD ["jekyll","server","--port","80","--host","0.0.0.0"]
