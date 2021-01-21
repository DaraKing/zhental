DOCKER_COMPOSE=docker-compose
APP_NAME=zhental-app
NGINX_NAME=zhental-nginx
DB_NAME=zhental-db

start: ## Start server
	$(DOCKER_COMPOSE) build app
	$(DOCKER_COMPOSE) up -d
	$(DOCKER_COMPOSE) exec app composer install
	$(DOCKER_COMPOSE) exec app php artisan key:generate

stop: ## Stop and remove a running container
	docker rm -f $(APP_NAME)
	docker rm -f $(DB_NAME)
	docker rm -f $(NGINX_NAME)


