FROM ruby:alpine

VOLUME ["/blog"]
WORKDIR /blog
EXPOSE 80

RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev && \
  rm -rf /var/cache/apk/* && \
  gem install bundler jekyll && \
  mkdir -p /blog

COPY server.sh /server.sh
COPY create.sh /create.sh

CMD ["/server.sh"]
