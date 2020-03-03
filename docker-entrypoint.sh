#!/bin/sh
if [ ! -f /smartdns/smartdns.conf ]; then
	mkdir -p /smartdns
	cp -u /smartdns.conf /smartdns/smartdns.conf
fi
/bin/smartdns -f -x -c /smartdns/smartdns.conf
