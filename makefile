# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
.DEFAULT_GOAL := help

pull: 
	docker-compose pull
up: 
	docker-compose up -d --build
log: 
	docker-compose logs -f
deploy: pull up log