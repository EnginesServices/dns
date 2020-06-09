#!/bin/sh

format_entry()\r\n{\r\n if test $n -eq 0\r\n then\r\n   n=1\r\n else\r\n  echo -n ,\r\nfi\r\n echo -n '\"'$list_entry'\"'\r\n}\r\n\r\nlist_entries()\r\n{\r\n for list_entry in `ls`\r\n do\r\n  format_entry\r\n done\r\n}\r\n\r\n\r\necho -n '{\"internal\":['\r\nif test -d /home/bind/domain_list/lan/\r\n then\r\n   cd /home/bind/domain_list/lan/\r\n   n=0\r\n   list_entries\r\nfi\r\n\r\necho -n '],\"external\":['\r\n\r\n\r\nif test -d /home/bind/domain_list/wan/\r\n then\r\n  cd /home/bind/domain_list/wan/\r\n  n=0\r\n  list_entries\r\nfi\r\n\r\necho ']}'
