### gospider

export MYTAG=0n100

docker build  -f  Dockerfile.gospider -t gospider:latest  .
docker login --username XXXX
docker  tag 0n100/gospider:latest  gospider:latest  

docker run -it --name myspider  gospider 