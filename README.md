# docker-htsp
Docker HTTP to SOCKS5 PROXY

Adjust the tsocks.conf and run by using docker-compose up -d 

Then just point the HTTP SOCKS PROXY configuration desired to localhost:3128 or port configured in yout docker-compose.yml

docker run -v ./tsocks.conf:/etc/tsocks.conf -p 3128:3128 docker-htsp:latest 
