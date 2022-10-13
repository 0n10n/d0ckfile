# 编译自己的基础操作系统



## CentOS6 

> docker build -t centos6:6.10  -f Dockerfile .

运行：
 docker run --name cent6 -itd --rm centos6:6.10

运行：
 docker exec -it 5b3552f90  bash
## CentOS7

> docker build -t centos7:7.4 -f Dockerfile .


运行：
> docker run  -it --rm centos7:7.4
> 

## iWallLoader for Nginx
export nginxver=1.20.2

export nginxver=1.10.3

> docker build --build-arg VER=$nginxver -t iwall_loader:$nginxver   -f Dockerfile.iwall .
docker run   -itd  --name iwall-nginx-loader  iwall_loader:$nginxver 
docker cp 3113609:/tmp/nginx4iwall2.tar.gz /tmp/nginx4iwall-$nginxver.tar.gz 

docker stop iwall-nginx-loader
docker container rm iwall-nginx-loader


运行：
> mkdir /tmp/docker
> docker run  -it -v /tmp/docker:/tmp  iwall_loader 