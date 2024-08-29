# Getting Started

###DockerFIle creation :
* touch Dockerfile
* vi DockerFile
* display file

```
cat Dockerfile
FROM alpine:3.14
WORKDIR /app
COPY . .
EXPOSE 8080
CMD ["./myapp"]

```

###Build the image :
	docker build -t myapp:latest .
	
###Tag the local build image :
	docker tag myapp:latest namitasgl/myapp:v1
	
###Login to git hub : credentials stored in config.json
	docker login
	
###Push the local tagged image to git hub :
	docker push namitasgl/myapp:v1
	
###Inspect the image :
	docker inspect namitasgl/myapp:v1
	
###run the container :
	docker run -d -p 8080:80 ngnix
	local 80 port map to 8080 container port
	
###view logs of running container :
	docker logs e980731cf5ae
	e980731cf5ae- container id
	
###enter inside the container :
	docker exec -it e980731cf5ae
	e980731cf5ae - container id
	
###Docker-compose file creation :
* touch docker-compose.yml
* vi docker-compose.yml
* display docker-compose file 

```

cat docker-compose.yml
version: '3.8'
services:
   web:
      image: nginx:latest
      ports:
         - "80:80"
      volumes:
         - web-data:/var/www/html
      

   database:
      image: mysql:latest
      environment:
         MYSQL_ROOT_PASSWORD: example
      volumes:
         - db-data:/var/lib/mysql

volumes:
   web-data:
   db-data:

```
  
###Multiple container with volume up via docker compose :
	docker-compose up

