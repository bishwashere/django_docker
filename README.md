A Django docker container - without nginx &amp; supervisord.

#### Reset:  
1. `docker container prune`  
2. `docker image prune  -a`

#### Steps to deploy  

1. `docker build -t webapp`  
2. `docker images`  
3. `docker run -itd -p 9876:9876 webapp bash`
4. `docker exec -it container_name python3 /home/docker/code/app/manage.py runserver 0.0.0.0:9876`
