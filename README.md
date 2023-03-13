# Подключение в одну команду

    ssh -i ~/.ssh/appuser -A -J appuser@51.250.70.243 appuser@10.128.0.5`

# ssh someinternalhost

    $ cat ~/.ssh/config 
    Host bastion
    Hostname 51.250.70.243
    User appuser
    
    Host someinternalhost
    User appuser
    ProxyCommand ssh -q bastion nc 10.128.0.5 22

# VPN

    bastion_IP = 51.250.70.243
    someinternalhost_IP = 10.128.0.5

# cloudtestapp

    testapp_IP = 84.201.128.51
    testapp_port = 9292

## Автоматический деплоймент

    yc compute instance create \
      --name reddit-app \
      --hostname reddit-app \
      --memory=4 \
      --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
      --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
      --metadata serial-port-enable=1 \
	  --metadata-from-file user-data=setup.yaml
