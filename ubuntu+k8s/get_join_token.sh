#!/usr/bin/bash

CYAN='\033[0;36m'
LIGHT_CYAN='\033[1;36m'
BOLD='\033[1m'
NC='\033[0m'

sudo echo -e ${CYAN}sudo $(kubeadm token create --print-join-command) --cri-socket unix:///var/run/cri-dockerd.sock --v=5${NC}
