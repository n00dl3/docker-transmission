docker-transmission
===================
Based on [elventear/docker-transmission](https://github.com/elventear/docker-transmission)

Transmission Daemon Docker Container using [nginx-proxy](https://github.com/jwilder/nginx-proxy)

Application container, don't forget to link to the nginx-proxy and to specify the local directory for the downloads:

```
    docker run -d --name transmission \
    -e VIRTUAL_HOST=subdomain.example.com \
    -e VIRTUAL_PORT=9091 \
    -p 12345:12345 -p 12345:12345/udp \
    --link nginx-proxy:nginx-proxy \
    -v /local/dir/downloads:/var/lib/transmission-daemon/downloads \
    -v /local/dir/incomplete:/var/lib/transmission-daemon/incomplete \
    n00dl3/transmission
```
