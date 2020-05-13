:whale: Dockerfiles for [SmartDNS](https://github.com/pymumu/smartdns)

forked from forked from easy-docker/smartdns

usage:

```sh
# example config file (modify port to 53): 
# https://github.com/guyschaos/docker-smartdns/blob/master/config.conf
mkdir /home/smartdns && touch /home/smartdns/smartdns.conf
# docker rm h-smartdns -f
docker run -d -p 53:53/udp -v /home/smartdns/:/smartdns/ --name h-smartdns hvanke/smartdns
```
