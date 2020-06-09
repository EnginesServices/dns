#!/bin/sh

show_zone_file()\r\n{\r\ncat /home/bind/engines/zones/named.conf.$domain_name |egrep \"CNAME|TXT|A|IN|NS|MX\"\r\n}\r\nif ! test -z $domain_name\r\n then\r\n  if test -f /home/bind/engines/zones/named.conf.$domain_nam\r\n   then\r\n     show_zone_file\r\n   else\r\n    echo Domain $domain_name is not self hosted\r\n  fi    \r\nelse\r\n   cd /home/bind/engines/zones\r\n    for domain_name in ` ls | sed \"/named.conf./s///\"`\r\n     do\r\n       echo $domain_name\r\n       show_zone_file      \r\n     done\r\nfi
