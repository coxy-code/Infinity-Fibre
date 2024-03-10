.PHONY: install
install:
	poetry install

.PHONY: migrate
migrate:
	poetry run python -m infinity-fibre.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m infinity-fibre.manage makemigrations

.PHONY:run-server
run-server:
	poetry run python -m infinity-fibre.manage runserver

.PHONY:superuser
superuser:
	poetry run python -m infinity-fibre.manage createsuperuser

.PHONY:update
update: install migrate ;