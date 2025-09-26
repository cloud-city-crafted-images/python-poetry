FROM python:3.13.7-slim-trixie

ARG POETRY_VERSION="2.0.1"

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		unzip \
		curl \
	; \
	apt-get dist-clean
    
ENV POETRY_HOME="/usr/local/bin/poetry"
ENV PYTHONUNBUFFERED=1
ENV PIP_ROOT_USER_ACTION=ignore

RUN pip install --upgrade pip; \
    pip install poetry==${POETRY_VERSION}; \
    $POETRY_HOME --version;
