# !/bin/bash
# Author: Mohibul Alam
# Commands for DB start

# kill 3306 port address
sudo kill `sudo lsof -t -i:3306`

# Up DB docker container
sudo docker-compose up -d