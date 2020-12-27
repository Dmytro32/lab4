# lab4
1. Read documentary
2. Check if docker is installed and created test image:
* docker -v 
* docker -h
* Use command sudo docker run docker/whalesay cowsay Docker is fun>my_work.log
3. Built and Pushed images into the repository

* sudo docker build -t dmytro32/lab4 .
* sudo docker push dmytro32/lab4
4. Run the docker image

sudo docker run -it --name=django-page --rm -p 8000:8000 dmytro32/lab4
5. Built image using

* sudo docker build -t monitoring -f Dockerfile.site .
6. Run both containers using

* sudo docker run --rm -it --net=host -v $(pwd)/logs:/app/logs dmytro32/lab4 -creates only folder without any files

* sudo docker run -it --name=django-page --rm --publish 8000:8000 dmytro32/la* b4 

# Docker Hub: https://hub.docker.com/repository/docker/dmytro32/lab4

