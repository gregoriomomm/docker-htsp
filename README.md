# Docker HTTP to SOCKS5 PROXY

Adjust the tsocks.conf and run by using 

```bash
docker-compose up -d 
```

Then just point the HTTP SOCKS PROXY configuration desired to localhost:3128 or port configured in yout docker-compose.yml

```bash
docker run -v path/tsocks.conf:/etc/tsocks.conf -p 3128:3128 docker-htsp:latest 
```

Example: 

```bash
export http_proxy="http://127.0.0.1:3128"
export https_proxy="http://127.0.0.1:3128"
```
curl http://host.target.domain




Or configure the Windows Proxy :

![Windows proxy](./proxy.jpg)
