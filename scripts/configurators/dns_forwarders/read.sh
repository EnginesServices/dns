#!/bin/sh

echo '{'\r\n\r\nif test -f /home/engines/scripts/configurators/saved/dns_forwarder1\r\n then\r\n   dns_forwarder1=`cat home/engines/scripts/configurators/saved/dns_forwarder1`\r\n\r\n  if test -f /home/engines/scripts/configurators/saved/dns_forwarder2\r\n   then\r\n    dns_forwarder2=`cat home/engines/scripts/configurators/saved/dns_forwarder2`\r\n  fi\r\nfi\r\n  if ! test -z $dns_forwarder1\r\n   then\r\n    echo '\"dns_server\":\"'$dns_forwarder1'\"'\r\n  fi\r\n\r\n  if ! test -z $dns_forwarder1\r\n   then\r\n    echo ':\"dns_server2\":\"'$dns_forwarder2'\"'\r\n  fi\r\n\r\n        echo '}'\r\n\r\nexit 0\r\n~