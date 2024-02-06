
DOCKER = docker
COMPOSE = $(DOCKER) compose


all: build up

ALL_DOCKERS = jellyfin radarr prowlarr sonarr qbittorrent nginx uptimekuma wg-easy flaresolverr bazarr fail2ban 

clean:
	docker container rm -f $(ALL_DOCKERS)

fclean: clean

build:
	docker compose build

up:
	docker compose up -d

re: clean build up

%.up:
	$(COMPOSE) up $*

%.build:
	$(COMPOSE) build $*

%.logs:
	$(COMPOSE) logs $*

%.stop:
	$(COMPOSE) stop $*

%.start:
	$(COMPOSE) start $*
	
%.restart:
	$(COMPOSE) restart $*

%.clean:
	$(COMPOSE) clean $*

%.down:
	$(COMPOSE) down $*

.PHONY: all dir upd up stop down restart build clean ps re
