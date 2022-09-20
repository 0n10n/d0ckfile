### gospider

#### Build 
`docker build  -f  Dockerfile.gospider -t gospider:latest  .`

#### Push
```
export MYTAG=0n100

docker login --username XXXX
docker tag 0n100/gospider:latest  gospider:latest  
```

#### Run
`docker run -it --name myspider  gospider `