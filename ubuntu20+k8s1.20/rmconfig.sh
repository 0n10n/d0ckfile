#!/usr/bin/bash

set -x
sudo kubeadm reset -f --cri-socket unix:///run/cri-dockerd.sock
sudo rm -rf /var/lib/etcd /etc/kubernetes
sudo rm -f /etc/kubernetes/manifests/kube-apiserver.yaml  /etc/kubernetes/manifests/kube-controller-manager.yaml /etc/kubernetes/manifests/kube-scheduler.yaml  /etc/kubernetes/manifests/etcd.yaml 
sudo systemctl restart docker
sudo systemctl restart containerd
sudo systemctl restart kubelet
echo Going to remove .kube directory
sleep 2
rm -rf $HOME/.kube
