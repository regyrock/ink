# syntax=docker/dockerfile:1
ARG PYTHON_VERSION=3.12
FROM python:$PYTHON_VERSION-slim AS base
MAINTAINER RegyRock

COPY ./ /opt/ink
WORKDIR /opt/ink

RUN pip install .

EXPOSE 8080

ENTRYPOINT ["/opt/ink/bin/ink"]
CMD []
