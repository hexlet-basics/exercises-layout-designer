-include /opt/basics/common/common.mk

compose-setup: compose-build

compose:
	docker compose up

compose-install:
	docker compose run --rm exercises npm ci

compose-bash:
	docker compose run --rm exercises bash

compose-build:
	docker compose build

compose-test:
	docker compose run --rm exercises make test

compose-code-lint:
	docker compose run --rm exercises make code-lint

code-lint:
	htmlhint modules/**/*.{htm,html}

compose-description-lint:
	docker compose run --rm exercises make description-lint

compose-schema-validate:
	docker compose run --rm exercises make schema-validate

ci-check:
	docker compose --file docker-compose.yml build
	docker compose --file docker-compose.yml up --abort-on-container-exit

find-todo:
	git grep TODO
