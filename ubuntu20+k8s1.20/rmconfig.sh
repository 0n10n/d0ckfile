#!/usr/bin/bash

set -x
sudo kubeadm reset -f
echo Going to remove .kube directory
sleep 2
rm -rf $HOME/.kube
