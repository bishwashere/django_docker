1. `sudo docker-compose up -d`
2. `https://localhost:9876
3. `sudo docker container attach webapp`
<hr>

Notes:  
`docker build `  
`docker run -itd -p 9876:9876 webapp_img bash`  
`docker exec -it webapp python3 /home/docker/code/app/manage.py runserver 0.0.0.0:9876`
