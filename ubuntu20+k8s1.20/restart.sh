#!/usr/bin/bash

set -x
set -e
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo systemctl restart containerd
sudo systemctl restart kubelet

