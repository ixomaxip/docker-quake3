include .env
-include .env.local

rt:
	docker-compose build rt
push pull:
	docker-compose $@ rt
up:
	docker-compose up -d --force-recreate rt
bash:
	docker-compose run --rm rt bash
log:
	docker-compose logs -f rt
ps:
	docker-compose ps