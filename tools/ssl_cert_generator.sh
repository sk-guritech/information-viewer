#!/bin/bash
cd $(cd $(dirname $0) && pwd)

openssl genrsa -out ../server_volumes/ssl/private/server.key 2048
openssl req -new -key ../server_volumes/ssl/private/server.key -out server.csr -subj '/CN=/O=/C='
openssl x509 -days 3650 -req -signkey ../server_volumes/ssl/private/server.key -in server.csr -out ../server_volumes/ssl/certs/server.crt
rm server.csr