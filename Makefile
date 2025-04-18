name = Pat's_inception
all:
	@printf "Launching config ${name}...\n"
	 @bash srcs/requirements/wordpress/tools/make_dir.sh
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d

build:
	@printf "Building config ${name}...\n"
	@bash srcs/requirements/wordpress/tools/make_dir.sh
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

down:
	@printf "Stopping config ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down

re: down
	@printf "Rebuild configur ${name}...\n"
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

clean: down
	@printf "Cleaning configu ${name}...\n"
	#@docker system prune -a
	#@sudo rm -rf ~/data/wordpress/*
	#@sudo rm -rf ~/data/mariadb/*

fclean:
	@printf "deep cleaning of all configurations dockers\n"
	#@docker stop $$(docker ps -qa)
	#@docker system prune --all --force --volumes
	#@docker network prune --force
	#@docker volume prune --force
	#@sudo rm -rf ~/data/wordpress/*
	#@sudo rm -rf ~/data/mariadb/*

.PHONY	: all build down re clean fclean
