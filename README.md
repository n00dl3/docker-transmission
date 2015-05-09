docker-transmission
===================
Based on [elventear/docker-transmission](https://github.com/elventear/docker-transmission)

Transmission Daemon Docker Container using [nginx-proxy](https://github.com/jwilder/nginx-proxy)

**WARNING** this container is not secured, no ip whitelist, no auth, the auth is made on the reverse proxy:

```
docker run -d --name transmission \
-e VIRTUAL_HOST=transmission.n00dl3.ovh \
-e VIRTUAL_PORT=9091 \
-p 51000:51000 -p 51000:51000/udp \
-v /local/dir/downloads:/var/lib/transmission-daemon/downloads \
-v /local/dir/incomplete:/var/lib/transmission-daemon/incomplete \
n00dl3/transmission
```
