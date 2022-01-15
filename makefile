# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
.DEFAULT_GOAL := help

pull: 
	docker-compose pull
git-pull: 
	git pull origin main
up: 
	docker-compose up -d --build
log: 
	docker-compose logs -f
deploy: git-pull pull up log