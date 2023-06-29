up : 
		cd ./srcs && sudo docker-compose up --build

down : 
		cd ./srcs && sudo docker-compose down

clean :
		sudo make down
		sudo docker image prune -a

fclean:
		sudo make down
		echo y | sudo docker system prune -a

.PHONY: clean fclean up down opendb opensv openwp
