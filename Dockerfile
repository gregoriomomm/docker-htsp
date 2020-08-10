FROM ubuntu:bionic

RUN  apt-get update &&  apt-get install -qy tsocks nmap &&  rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD run.sh /run.sh

EXPOSE 3128/tcp


ENTRYPOINT ["/run.sh"]
