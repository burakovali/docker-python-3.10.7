#syntax=docker/dockerfile:1

FROM python:3.10.7-bullseye

WORKDIR /app

RUN apt-get update && apt-get install -y \
	build-essential libsndfile1-dev \
	software-properties-common \ 
	git \
	&& rm -rf /var/lib/apt/lists/*

RUN pip install pipenv

COPY hello hello
CMD python3 hello

LABEL org.opencontainers.image.source="https://github.com/burakovali/docker-python-3.10.7"
