all: build

build:
	docker-compose run mkd mkdocs build --clean

demo:
	docker compose up --build

clean-up:
	docker-compose down --volumes --rmi all --remove-orphans


