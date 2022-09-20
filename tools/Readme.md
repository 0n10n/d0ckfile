### gospider

#### Build 
`docker build  -f  Dockerfile.gospider -t gospider:latest  .`

#### Push
```
export MYTAG=0n100  #Change to yours

docker login --username XXXX
docker tag $MYTAG/gospider:latest  gospider:latest  
```

#### 启动

为了数据持久化，先创建一个长期可用的本地目录，用于挂载给容器使用：`mkdir -p ~/docker/data`

然后启用各工具：

```bash
docker run -it -v  ~/docker/data:/data --name myspider  gospider `
docker run -it --name x-crack1  x-crack 
```

#### 正式使用
```bash
export URL=https://www.sec-wiki.com/news
docker run -it --rm -v  ~/docker/data:/data   --name spider$RANDOM gospider  --depth 1  --concurrent 2 --output /data -s $URL
```

为了以后更省事一点，可以执行：`alias gospider="docker run -it --rm -v  ~/docker/data:/data   --name spider$RANDOM gospider  --depth 1  --concurrent 2 --output /data -s" ` 

并把这句写入环境文件中：`echo alias gospider=\"docker run -it --rm -v  ~/docker/data:/data   --name myspider gospider  --depth 1  --concurrent 2 --output /data -s\" >> ~/.bashrc && source ~/.bashrc ` 
