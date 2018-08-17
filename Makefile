.PHONY: dev
image:
	docker build -t morbidick/nanoc .

.PHONY: shell
shell:
	docker run -it --rm -v $$PWD:/app morbidick/nanoc bash

.PHONY: build
build:
	docker run -it --rm -v $$PWD:/app morbidick/nanoc nanoc
