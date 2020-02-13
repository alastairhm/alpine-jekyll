FROM alpine:latest

VOLUME ["/blog"]
WORKDIR /blog
EXPOSE 80

COPY server.sh /server.sh

RUN apk add --update \
  build-base \
  ruby \
  ruby-dev \
  libxml2-dev \
  libxslt-dev && \
  rm -rf /var/cache/apk/* && \
  gem install bundler jekyll && \
  mkdir -p /blog

CMD ["/server.sh"]
