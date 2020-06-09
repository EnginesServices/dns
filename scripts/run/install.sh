#!/bin/sh

mkdir -p /var/lib/bind/engines \r\n    mkdir -p /var/run/named \r\n    chown bind -R  /home/bind/ \r\n   chown bind /var/run/named \r\n\tchown bind /var/lib/bind/engines /home/bind/ \r\n\tusermod -G containers -a bind \r\n\ttouch /home/bind/engines/forwarders \r\n\tchown bind /home/engines/scripts/configurators/saved /home/bind/engines/forwarders\r\n\tmkdir -p /etc/bind/keys/ /home/bind/engines/domains /home/bind/engines/zones/ \r\n\tchown bind -R /etc/bind/keys/ /etc/bind/named.conf.default-zones  /var/lib/bind/engines/engines.dnsrecords /home/bind/engines/domains.hosted /home/bind/engines/zones/ /home/bind/engines/domains// \r\n\r\n\r\n mkdir -p /home/bind/domain_list/lan /home/bind/domain_list/wan\r\n chown bind /home/bind/domain_list/lan /home/bind/domain_list/wan