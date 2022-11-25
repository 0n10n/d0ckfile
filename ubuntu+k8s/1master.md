# K8S安装步骤：主节点

## 一、环境准备：

### 机器环境
- 内存
Master:  4G内存以上
Node： 8G内存以上

- CPU
Master：2 核至少（要是1核必然安装失败）
Node：可以1核

- OS
基于x86_64架构的各种Linux发行版本，Kernel版本要求在3.10及以上。


### 调整时区
如果时间或者时区不对，最好还是调整一下。

```bash
# 设置系统时区为中国/上海
$ timedatectl set-timezone Asia/Shanghai
# 将当前的 UTC 时间写入硬件时钟
$ timedatectl set-local-rtc 0
# 重启依赖于系统时间的服务
$ systemctl restart rsyslog
$ systemctl restart crond
```

### 关闭防火墙
```bash
$ systemctl stop firewalld
$ systemctl disable firewalld 
```

### 关闭selinux
如果有的话：

```bash
$ setenforce 0 #临时关闭selinux
$ getenforce #查看selinux状态
$ sed -i 's/^ *SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
```
## 二、Master节点安装

### 1、 初始安装

编辑`install_k8s.sh`，根据实际情况修改。重点是`MASTER1_IP`,`NODE1_IP`,`MASTER1`和`NODE1`这四项。一定要根据实际情况修改。`POD_NETWORK`和`SERVICE_NETWORK`不建议修改，因为要和后面的flannel网络插件的默认值相匹配。这里写的就是默认值。
```ini
#需要安装的k8s的版本
KUBE_VERSION="1.20.15"
KUBE_VERSION2=$(echo $KUBE_VERSION |awk -F. '{print $2}')

#master和node1节点的IP
MASTER1_IP=192.168.99.20
NODE1_IP=192.168.99.21

#master和node1节点的主机名
MASTER1=master
NODE1=node1

POD_NETWORK="10.244.0.0/16"
SERVICE_NETWORK="10.96.0.0/12"
```
执行脚本，开始安装：

```bash
sudo ./install_k8s.sh
```

选择：`1) 初始化kubernetes集群`

![image-20221118173924983](images/image-20221118173924983.png)

这一步主要是做一些必须的环境设置和调整；设置docker拉取仓库地址，拉取必须的镜像等基础步骤。



### 2、安装网络插件flannel
```bash
wget https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml -O kube-flannel-io.yml
kubectl apply -f ./kube-flannel-io.yml
```
执行完后，查看各个pod的状态
```bash
$ kubectl get pod -A
NAMESPACE      NAME                              READY   STATUS     
kube-flannel   kube-flannel-ds-6lwm6             0/1     Init:0/2   0   
kube-system    coredns-7f89b7bc75-c6vkd          0/1     Pending    0    kube-system    coredns-7f89b7bc75-sp5ln          0/1     Pending    0   
kube-system    etcd-umaster                      1/1     Running    0   
kube-system    kube-apiserver-umaster            1/1     Running    0    kube-system    kube-controller-manager-umaster   1/1     Running    0   
kube-system    kube-proxy-rqc2l                  1/1     Running    0   
kube-system    kube-scheduler-umaster            1/1     Running    0   

```
这时候，最完美的状态，就是所有的pod的`STAUS`那里都是显示着`Running`。但往往刚装完的时候，这里的coredns和kube-flannel等相关的pod，状态都是异常的（pending等）！不必惊慌，喝杯茶继续等待就好，因为可能还在拉取镜像，需要一些时间。

等到 `kubectl get pod -A` 这样的状态，就代表一切正常了。

![image-20221121155620346](images/image-20221121155620346.png)
