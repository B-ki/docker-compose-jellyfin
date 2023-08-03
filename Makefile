
all: build up

clean:
	docker container rm -f jellyfin

fclean: clean

build:
	docker compose build

up:
	docker compose up -d

re: fclean build up
