DOCKER_COMPOSE=docker-compose
APP_NAME=zhental-app
NGINX_NAME=zhental-nginx
DB_NAME=zhental-nginx

start: ## Start server
	$(DOCKER_COMPOSE) build app
	$(DOCKER_COMPOSE) up -d
	$(DOCKER_COMPOSE) exec app composer install
	$(DOCKER_COMPOSE) exec app php artisan key:generate

stop: ## Stop and remove a running container
	docker stop $(APP_NAME); docker rm $(APP_NAME)
	docker stop $(DB_NAME); docker rm $(DB_NAME)
	docker stop $(NGINX_NAME); docker rm $(NGINX_NAME)


