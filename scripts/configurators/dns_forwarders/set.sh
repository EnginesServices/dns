#!/bin/sh

if test -z $dns_server\r\n  then\r\n   $dns_server=\" \"\r\n fi\r\n\r\nif test ${#dns_server} -ge 7\r\n then\r\n  echo  -n ${dns_server} >/home/engines/scripts/configurators/saved/dns_forwarder1\r\nif test ${#dns_server2} -ge 7\r\n  then\r\n  echo  -n ${dns_server2} >> /home/engines/scripts/configurators/saved/dns_forwarder2\r\n else\r\n  if test -f /home/engines/scripts/configurators/saved/dns_forwarder2\r\n  then\r\n  rm /home/engines/scripts/configurators/saved/dns_forwarder2\r\n fi\r\n fi\r\n   echo \"forwarders {\r\n        $dns_server; \" > /home/bind/engines/forwarders\r\n\r\n    if ! test -z $dns_server2\r\n     then\r\n       if test ${#dns_server2} -ge 7\r\n        then\r\n         echo \" $dns_server2; \" >> /home/bind/engines/forwarders\r\n        fi\r\n    fi\r\n  echo \"}; \" >> /home/bind/engines/forwarders\r\n  else\r\n    echo \"Clearing forwarders\"\r\n   echo \"\" > /home/bind/engines/forwarders\r\nfi\r\n\r\necho Success\r\nexit 0
