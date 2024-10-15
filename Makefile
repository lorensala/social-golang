MIGRATIONS_PATH = ./cmd/migrate/migrations
DATABASE_URL = postgres://admin:adminpassword@localhost/social?sslmode=disable

migration:
	@migrate create -ext sql -dir $(MIGRATIONS_PATH) -seq $(filter-out $@,$(MAKECMDGOALS))

migrate-up:
	@migrate -path $(MIGRATIONS_PATH) -database $(DATABASE_URL) up

migrate-down:
	@migrate -path $(MIGRATIONS_PATH) -database $(DATABASE_URL) down