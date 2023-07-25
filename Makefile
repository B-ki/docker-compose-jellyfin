
all: build up

clean:
	docker container ls -aq | xargs --no-run-if-empty docker container rm -f

fclean: clean

build:
	docker compose build

up:
	docker compose up -d

re: fclean build up
