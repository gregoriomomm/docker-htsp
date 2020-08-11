# Docker HTTP to SOCKS5 PROXY

References: 
[tsocks](http://manpages.ubuntu.com/manpages/bionic/man8/tsocks.8.html)
[ncat](http://manpages.ubuntu.com/manpages/bionic/en/man1/ncat.1.html)

Adjust the [tsocks.conf](http://manpages.ubuntu.com/manpages/bionic/man5/tsocks.conf.5.html) replacing the variables by your user name and password, 
and other configurations related to your SOCKS5 paths: 

```
default_user = user
default_pass = password
```

and check if the tsocks.conf is pointing to the correct path inside docker-compose.yml and run by using : 

```bash
docker run -v path/tsocks.conf:/etc/tsocks.conf -p 3128:3128 docker-htsp:latest 
```

Example: 

[Java](https://docs.oracle.com/javase/7/docs/technotes/guides/net/proxies.html): 
```
export JVM_ARGS="-Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=3128"
```

Unix:
```bash
export http_proxy="http://127.0.0.1:3128"
export https_proxy="http://127.0.0.1:3128"
export no_proxy="127.0.0.1,localhost" 

curl http://host.target.domain
```

Or configure the Windows Proxy :

![Windows proxy](./proxy.jpg)
