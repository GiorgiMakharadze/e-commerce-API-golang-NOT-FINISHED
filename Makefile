BINARY_NAME=e-commerce-API-golang

CMD_PATH=cmd/api
MIGRATE_PATH=db/migrate

server: $(CMD_PATH)/main.go
	cd $(CMD_PATH) && go build -o $(BINARY_NAME) main.go && ./$(BINARY_NAME)

migrate: $(MIGRATE_PATH)/migrate.go
	cd $(MIGRATE_PATH) && go run migrate.go

compile: $(CMD_PATH)/main.go
	cd $(CMD_PATH) && go build -o $(BINARY_NAME) main.go

format:
	go fmt ./...

.PHONY: server migrate compile format
