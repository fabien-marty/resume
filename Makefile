IMAGE_TAG=resume:latest

.PHONY: docker
docker:
	docker build -t "$(IMAGE_TAG)" .

.PHONY: debug
debug: docker
	docker run --rm -it "$(IMAGE_TAG)" find /usr/share/nginx/html/ -maxdepth 1
	docker run -p 8000:80 -it "$(IMAGE_TAG)"
