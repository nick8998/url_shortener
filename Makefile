APP_NAME := shortener
DOCKER_COMPOSE := docker compose

run:
	go run ./cmd/$(APP_NAME)/

test:
	go test ./... -count=1

lint:
	golangci-lint run ./...

migrate-up:
	echo "not implemented"

docker-up:
	$(DOCKER_COMPOSE) up -d postgres redis

docker-down:
	$(DOCKER_COMPOSE) down