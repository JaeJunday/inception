NAME 	= inception

all		: $(NAME)
$(NAME) :
		cd ./srcs && sudo docker compose up --build

down	: 
		cd ./srcs && sudo docker compose down

clean	:
		sudo make down
		echo y | sudo docker image prune -a
		echo y | sudo docker volume prune -a

fclean	: clean
		echo y | sudo docker system prune -a

re		:
		make fclean
		make all

.PHONY: all clean fclean down re
