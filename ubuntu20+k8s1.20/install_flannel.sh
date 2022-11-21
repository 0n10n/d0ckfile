#!/usr/bin/bash

CYAN='\033[0;36m'
LIGHT_CYAN='\033[1;36m'
BOLD='\033[1m'
NC='\033[0m'

if [[ $(which proxychains4) ]];then
proxychains wget https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml -O kube-flannel-io.yml
else
wget https://raw.githubusercontent.com/flannel-io/flannel/master/Documentation/kube-flannel.yml -O kube-flannel-io.yml
fi
kubectl apply -f ./kube-flannel-io.yml
echo -e 可以输入${CYAN}kubectl get pod -A${NC}查看各pod运行状态。

