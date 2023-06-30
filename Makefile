all 	:
		@echo "$(Green)=> Create $(Purple)Local Volume Path=/home/jaejkim/data/$(Reset)"
		@mkdir -p /home/jaejkim/data/wordpress
		@mkdir -p /home/jaejkim/data/mariadb
		@echo "$(Cyan)=> Docker$(Reset) compose up"
		@cd ./srcs && sudo docker compose up --build

down	: 
		@echo "$(Cyan)Docker$(Reset) compose down"	
		@cd ./srcs && sudo docker compose down
		@echo "$(B_Red)=> Down $(B_Green)[container, network] $(Reset)compose data"

clean	:
		@sudo make down
		@echo y | sudo docker image prune -a
		@echo y | sudo docker volume prune -a
		@echo "$(B_Red)=> Remove $(B_Green)[images, volume] $(Reset)compose data"

fclean	: clean
		@echo y | sudo docker system prune -a
		@rm -rf /home/jaejkim/data
		@echo "$(B_Red)=> Remove$(Reset) Local Volume"
		@echo "$(B_Red)=> Remove$(Cyan) Docker$(Reset) build Cash"

re		:
		make fclean
		make all

.PHONY: all clean fclean down re


# ESCAPE COLOR SET
Black  	= \033[0;30m
Red    	= \033[0;31m
Green   = \033[0;32m
Yellow 	= \033[0;33m
Blue   	= \033[0;34m
Purple 	= \033[0;35m
Cyan   	= \033[0;36m
White  	= \033[0;37m
B_Black =  \033[0;90m
B_Red	= \033[0;91m
B_Green	= \033[0;92m
B_Yellow= \033[0;93m
Cyan	= \033[0;94m
B_Purple= \033[0;95m
B_Cyan	= \033[0;96m
B_White	= \033[0;97m
Reset	= \033[0m