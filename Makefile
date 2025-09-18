.PHONY: up down build start stop restart logs logs-app logs-nginx logs-mysql composer require install update artisan key migrate fresh seed tinker queue queue-work test npm npm-dev npm-build npm-watch shell-app shell-mysql shell-nginx

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose restart

logs:
	docker-compose logs -f

logs-app:
	docker-compose logs -f app

logs-nginx:
	docker-compose logs -f webserver

logs-mysql:
	docker-compose logs -f mysql
	
bash:
	docker-compose exec app bash

composer:
	docker-compose exec app composer $(filter-out $@,$(MAKECMDGOALS))

require:
	docker-compose exec app composer require $(filter-out $@,$(MAKECMDGOALS))

install:
	docker-compose exec app composer install

update:
	docker-compose exec app composer update

artisan:
	docker-compose exec app php artisan $(filter-out $@,$(MAKECMDGOALS))

key:
	docker-compose exec app php artisan key:generate

migrate:
	docker-compose exec app php artisan migrate

fresh:
	docker-compose exec app php artisan migrate:fresh

seed:
	docker-compose exec app php artisan db:seed

tinker:
	docker-compose exec app php artisan tinker

queue:
	docker-compose exec app php artisan queue:work

test:
	docker-compose exec app php artisan test

npm:
	docker-compose exec app npm $(filter-out $@,$(MAKECMDGOALS))

npm-dev:
	docker-compose exec app npm run dev

npm-build:
	docker-compose exec app npm run build

npm-watch:
	docker-compose exec app npm run watch

shell-app:
	docker-compose exec app bash

shell-mysql:
	docker-compose exec mysql bash

shell-nginx:
	docker-compose exec webserver sh

%:
	@: