PROJECT_NAME = paranioa
DOCKER_TAG := $(shell git rev-parse HEAD)

.PHONY: build
build: ## build project docker image
	@echo "build"
	docker build \
		--cache-from "$(PROJECT_NAME):latest" \
		-t $(PROJECT_NAME):latest \
		-t $(PROJECT_NAME):$(DOCKER_TAG) .

.PHONY: shell
shell: ## shell into container for local devving
	@echo "shell"
	@docker run -it --rm \
		-v `pwd`:/opt/$(PROJECT_NAME) \
		"$(PROJECT_NAME):latest" \
		bash
