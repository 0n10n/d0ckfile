### gospider

#### Build 
`docker build  -f  Dockerfile.gospider -t gospider:latest  .`

#### Push
```
export MYTAG=0n100  #Change to yours

docker login --username XXXX
docker tag $MYTAG/gospider:latest  gospider:latest  
```

#### Run
`docker run -it --name myspider  gospider `

`docker run -it --name x-crack1  x-crack `