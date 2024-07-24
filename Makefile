DC = docker compose
DC_RUN = ${DC} run --rm php
DC_EXEC = ${DC} exec php

PHONY: help
.DEFAULT_GOAL := help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

init: down build install up success-message ## Initialize environment

build: ## Build services.
	${DC} build $(c)

up: ## Create and start services.
	${DC} up -d $(c)

stop: ## Stop services.
	${DC} stop $(c)

start: ## Start services.
	${DC} start $(c)

down: ## Stop and remove containers and volumes.
	${DC} down -v $(c)

restart: stop start ## Restart services.

install: ## Install dependencies without running the whole application.
	${DC_RUN} composer install

success-message:
	@echo "Готово, приложуха крутится на http://localhost:8080"
	@echo "Good luck! 🚀"