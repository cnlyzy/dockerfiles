#!/bin/bash
read -p "Delete username: " DNAME
docker-compose run --rm openvpn easyrsa revoke $DNAME
docker-compose run --rm openvpn easyrsa gen-crl
docker-compose run --rm openvpn rm -f /etc/openvpn/pki/reqs/"$DNAME".req
docker-compose run --rm openvpn rm -f /etc/openvpn/pki/private/"$DNAME".key
docker-compose run --rm openvpn rm -f /etc/openvpn/pki/issued/"$DNAME".crt
docker restart openvpn