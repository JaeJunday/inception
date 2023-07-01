all 	:
		@make domain
		@mkdir -p /home/jaejkim/data/wordpress
		@mkdir -p /home/jaejkim/data/mariadb
		@echo "$(B_Cyan)=> 🐳Docker$(Reset) compose up"
		@echo "$(Green)=> Create $(Purple)Local Volume Path=/home/jaejkim/data/$(Reset)"
		@cd ./srcs && docker compose up --build 

down	: 
		@cd ./srcs && docker compose down
		@echo "$(B_Cyan)=> 🐳Docker$(Reset) compose down"	
		@echo "$(B_Red)=> Down $(B_Green)[container, network] $(Reset)compose data"

clean	:
		@make down
		@echo y | docker image prune -a
		@echo y | docker volume prune -a
		@echo "$(B_Red)=> Remove $(B_Green)[images, volume] $(Reset)compose data"

fclean	: clean
		@echo y | docker system prune -a
		@rm -rf /home/jaejkim/data
		@docker volume rm mariadb wordpress
		@echo "$(B_Red)=> Remove$(Purple) Local Volume$(Reset)"
		@echo "$(B_Red)=> Remove$(B_Cyan) 🐳Docker$(Reset) Cash"

re		:
		make fclean
		make all

domain :
		@if ! grep -e '^127.0.0.1\s\+jaejkim.42.fr' /etc/hosts; then \
			echo "$(Yellow)=> Add Domain name ---$(Reset)"; \
			sudo sh -c 'echo "127.0.0.1	jaejkim.42.fr" >> /etc/hosts'; \
		else \
			echo "$(Yellow)=> Domain name already setted : jaejkim.42.fr$(Reset)"; \
		fi

.PHONY: all clean fclean down re domain


# ESCAPE COLOR SET
Black  	= \033[0;30m
Red    	= \033[0;31m
Green   = \033[0;32m
Yellow 	= \033[0;33m
Blue   	= \033[0;34m
Purple 	= \033[0;35m
Cyan   	= \033[0;36m
White  	= \033[0;37m
B_Black = \033[0;90m
B_Red	= \033[0;91m
B_Green	= \033[0;92m
B_Yellow= \033[0;93m
B_Purple= \033[0;95m
B_Cyan	= \033[0;96m
B_White	= \033[0;97m
Reset	= \033[0m