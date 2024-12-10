#!/bin/bash

set -e

if [ ! -f /etc/nginx/ssl/private_key.key ]; then
	mkdir /etc/nginx/ssl

	openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/private_key.key -out /etc/nginx/ssl/public_key.crt -subj "/C=IT/ST=IT/L=FLORENCE/O=42/OU=1337/CN=gduranti"
fi

nginx
