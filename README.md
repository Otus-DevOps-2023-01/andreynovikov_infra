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
