#!/bin/bash
read -p "please your username: " NAME
docker-compose run --rm openvpn easyrsa build-client-full $NAME nopass
docker-compose run --rm openvpn ovpn_getclient $NAME > /home/openvpn/user/$NAME.ovpn
docker restart openvpn