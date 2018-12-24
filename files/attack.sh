#!/bin/sh
ATTACK_DOMAIN=$1
echo -e "Attack $1"
echo -e "GET $1" | vegeta attack -duration=60s -rate 100 -workers 10 -insecure | tee results.bin |vegeta report
