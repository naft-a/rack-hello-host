FROM ruby:3.1.0-alpine AS base
RUN apk --upgrade add build-base vim

RUN addgroup -g 1000 hello
RUN adduser -u 1000 -s /bin/bash -h /opt/hello -S hello
USER hello
RUN mkdir -p /opt/hello/app /opt/hello/.bundle
WORKDIR /opt/hello/app

RUN gem install bundler -v 2.3.26 --no-doc
COPY --chown=hello Gemfile Gemfile.lock ./
RUN bundle install -j 4

COPY --chown=hello . .
