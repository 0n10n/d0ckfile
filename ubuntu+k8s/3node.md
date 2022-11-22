# K8S安装步骤和经验：工作节点（Worker）

请先参考《K8S安装步骤和经验：主节点》篇，那里面的“环境准备”步骤，这部分也是需要一样执行一遍，就不再赘述了。

kubeadm config images list

kubeadm token create --print-join-command

还要在最后加上 “ --cri-socket unix:///var/run/cri-dockerd.sock”



把Master节点的 `/etc/cni/net.d/10-flannel.conflist`，复制到Node节点  `/etc/cni/net.d/10-flannel.conflist`。



/run/flannel/subnet.env

sudo kubeadm join 10.10.11.31:6443 --token 42u7ir.hh2ihtt2p0c72389     --discovery-token-ca-cert-hash sha256:2c41b128f8d55ed28a208f855cb03a9d1dae22a28a1c2fb3f84d11b8f2b71c16  --cri-socket unix:///var/run/cri-dockerd.sock --v=10

journalctl -xe

