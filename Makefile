IMAGE_TAG=resume:latest

.PHONY: docker
docker:
	docker build -t "$(IMAGE_TAG)" .

.PHONY: debug
debug: docker
	docker run -p 8000:80 -it "$(IMAGE_TAG)"
