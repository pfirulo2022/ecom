build:
	@go build -o bin/ecom cmd/main.go

test:
	@go test -v ./...
	
run: build
	@./bin/ecom

migration:
	@migrate create -ext sql -dir cmd/migrate/migrations add-user-table


migrate-up:
	@go run cmd/migrate/main.go up

migrate-down:
	@go run cmd/migrate/main.go down