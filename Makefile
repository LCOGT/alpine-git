DOCKER_IMG := docker.lco.global/alpine-git
TAG := $(shell git describe --always)

all:
	docker build -t $(DOCKER_IMG):$(TAG) .
	docker push $(DOCKER_IMG):$(TAG)
