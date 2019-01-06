# django_docker
A Django docker container - without nginx &amp; supervisord.

## Reset:  
1. docker container prune  
2. docker image prune  -a

## Steps to deploy  

1. [ DEPLOY ] docker build -t webapp  
2. [ CHECK ] docker images  
3. [ DEPLOY ] docker run -itd -p 9876:9876 webapp bash
4. [ DEPLOY ] Ctrl + PQ
5. [ DEPLOY ] docker exec -it affectionate_minsky python3 /home/docker/code/app/manage.py runserver 0.0.0.0:9876
