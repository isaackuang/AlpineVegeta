FROM isaackuang/alpine-base:3.8.0

ADD files/vegeta /usr/local/bin/vegeta

ADD files/attack.sh /attack.sh

ENTRYPOINT ["/attack.sh"]
