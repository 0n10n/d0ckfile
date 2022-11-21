#!/usr/bin/bash


while true; do
    echo [1] unix:///var/run/cri-dockerd.sock
    echo [2] unix:///run/containerd/containerd.sock
    echo [3] unix:///var/run/dockershim.sock
    read -r -p "Choose the runtime endpoint[1/2/3]: " answer
    case $answer in
        [1]* ) echo case 1; break;;
        [2]* ) echo case 2; break;;
        [3]* ) echo case 3; break;;
        * ) echo "Please answer 1/2/3.";;
    esac
done
