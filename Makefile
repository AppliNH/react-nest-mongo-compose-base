start-dev:
	docker-compose -f compose-files/dev/docker-compose.db.yaml -f compose-files/dev/docker-compose.apps.yaml  --env-file ./.env.dev up

stop-dev:
	docker-compose -f compose-files/dev/docker-compose.db.yaml -f compose-files/dev/docker-compose.apps.yaml stop

start-dev-db:
	docker-compose -f compose-files/dev/docker-compose.db.yaml --env-file ./.env.dev up

stop-dev-db:
	docker-compose -f compose-files/dev/docker-compose.db.yaml stop

docker-clean:
	docker system prune -f && docker volume prune -f && docker container prune -f