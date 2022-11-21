#!/usr/bin/bash

ORIGINAL_HUB=k8s.gcr.io
NEW_HUB=registry.aliyuncs.com/google_containers 

for url in $(kubeadm config images list); do
  if [[ "$url" == *"$ORIGINAL_HUB"* ]]; then
     #echo images: $url
     echo old: $url
     echo new: ${url/$ORIGINAL_HUB/$NEW_HUB}
     echo docker pull ${url/$ORIGINAL_HUB/$NEW_HUB}
     echo docker tag ${url/$ORIGINAL_HUB/$NEW_HUB} $url
  
  fi
done

