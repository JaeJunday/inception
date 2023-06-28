up : 
		cd ./srcs && sudo docker compose up --build

down : 
		cd ./srcs && sudo docker compose down

clean :
		sudo make down
		sudo docker image prune -a

fclean:
		sudo make down
		sudo docker system prune -a

opendb:		
		sudo docker exec -it mariadb /bin/bash

opensv:	
		sudo docker exec -it nginx /bin/bash

openwp:
		sudo docker exec -it wordpress /bin/bash

.PHONY: clean fclean up down opendb opensv openwp
