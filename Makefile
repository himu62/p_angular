.PHONY: build up attach

IMAGE     := p_angular_node
CONTAINER := p_angular_node

build:
	sudo docker build --tag=$(IMAGE) . 

up:
	sudo docker run --rm -it --volume $(CURDIR):/work --name=$(CONTAINER) $(IMAGE)
