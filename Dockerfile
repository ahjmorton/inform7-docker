from alpine:3.7

add http://inform7.com/download/content/6M62/I7_6M62_Linux_all.tar.gz /tmp/i7.tar.gz

workdir /tmp
run apk add --update perl && rm -rf /var/cache/apk/* && tar -xzf i7.tar.gz  && cd inform7* && ./install-inform7.sh --prefix /usr/local && cd /tmp && rm -Rf *

cmd ["i7"]
