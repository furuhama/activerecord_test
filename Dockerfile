# syntax = docker/dockerfile:experimental

FROM ruby:2.7-buster

RUN --mount=type=cache,target=/var/cache/apt --mount=type=cache,target=/var/lib/apt \
      apt update \
      && apt upgrade -y \
      && apt install -y --no-install-recommends \
          git \
          openssh-client \
          make \
          gcc \
          default-libmysqlclient-dev \
          default-mysql-client

RUN git clone --depth 1 https://github.com/rails/rails.git

WORKDIR rails/activerecord

COPY setup_db.sh .
COPY console.rb .

RUN echo 'gem: --no-document' > ~/.gemrc \
      && bundle install --jobs 6
