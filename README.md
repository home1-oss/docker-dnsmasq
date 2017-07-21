# docker-dnsmask
A simple container run `dnsmasq -k` (run at foreground) by default.

## Add/remove hosts

Edit hosts config

```sh
docker exec -it dnsmasq.local hostadd <hostname> <ip>
docker exec -it dnsmasq.local hostdel <hostname> <ip>
docker exec -it dnsmasq.local hostdel <hostname>
```

Send signal to reload hosts config
```sh
docker kill -s HUP dnsmasq.local
```

## Extra commands (boot options)

+ `--log-facility=-` out put logs to console (stdout) 

+ `--addn-hosts=<file>` specify a hosts file, just like /etc/hosts

+ `--resolv-file=<file>`
```text
# Example: resolv.conf
nameserver <nameserver_ip1>
nameserver <nameserver_ip2>
```

## Debug

`docker run --rm -it --cap-add=NET_ADMIN home1oss/dnsmasq:2.76 /bin/bash`
