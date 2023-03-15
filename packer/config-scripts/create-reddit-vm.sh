#!/bin/bash

yc compute instance create \
   --name reddit-app \
   --hostname reddit-app \
   --memory=4 \
   --create-boot-disk image-name=reddit-base-1678905656,size=10GB \
   --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
   --metadata-from-file user-data=setup.yaml \
   --metadata serial-port-enable=1
