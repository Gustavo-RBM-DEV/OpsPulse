-include .env

.PHONY: up down logs psql

up:
	docker compose up -d --wait

down:
	docker compose down

logs:
	docker compose logs -f postgres

psql:
	docker compose exec postgres psql -U $(POSTGRES_USER) -d $(POSTGRES_DB)
