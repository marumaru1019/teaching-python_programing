docker stop $(docker ps -q)
docker rm $(docker ps -q -a)
docker rmi $(docker images)