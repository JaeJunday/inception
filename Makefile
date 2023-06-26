up : 
		cd ./srcs && sudo docker compose up

down : 
		cd ./srcs && sudo docker compose down

clean :
		sudo make down
		sudo docker image prune -a

fclean:
		sudo make down
		sudo docker system prune -a

.PHONY: clean fclean up down