#!/usr/bin/bash

set -x
sudo rm -f /etc/kubernetes/kubelet.conf /etc/kubernetes/bootstrap-kubelet.conf /etc/kubernetes/pki/ca.crt
sudo systemctl restart kubelet
sudo systemctl status kubelet
