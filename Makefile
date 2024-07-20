.PHONY: build

DOCKER_IMAGE_TAG  ?= $(subst /,-,$(shell git rev-parse --abbrev-ref HEAD))-$(shell date +%Y%m%d)-$(shell git rev-parse --short HEAD)

venv:
	python -m venv ./venv
	source venv/bin/activate
	pip install -r requirements-dev.txt

init: venv

lint:
	poe lint
test:
	poe test

build:
	poetry lock --no-update
	docker build . -t regyrock/ink:${DOCKER_IMAGE_TAG}
