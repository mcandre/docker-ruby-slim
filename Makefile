IMAGE=mcandre/docker-ruby-slim:latest

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run --rm $(IMAGE) ruby --version
	docker run --rm $(IMAGE) gem --version
	docker images | grep $(IMAGE) | awk '{ print $$(NF-1), $$NF }'

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

dockerlint:
	$(shell npm bin)/dockerlint

lint: dockerlint

publish:
	docker push $(IMAGE)
