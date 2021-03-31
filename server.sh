#!/bin/sh
bundle add webrick
bundle install
bundle exec jekyll serve  --incremental --port 80 --host 0.0.0.0

