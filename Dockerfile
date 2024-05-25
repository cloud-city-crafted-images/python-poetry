# syntax=docker/dockerfile:1
FROM python:3.12.3-slim

ENV POETRY_HOME='/usr/local' \
    POETRY_VERSION=1.8.3

RUN apt-get -q update
RUN apt-get -y --no-install-recommends install curl

RUN curl -sSL 'https://install.python-poetry.org' | python -