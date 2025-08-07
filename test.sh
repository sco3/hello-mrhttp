#!/usr/bin/env -S bash



./cpu-governor.sh
server=$(ps -aef | grep -v grep | \
grep -E -o 'mrhttp' \
| sort -u)

echo $(cat /proc/cpuinfo  | grep "model name" | sort -u | awk -F: '{print $2}')
echo ===
echo $server 
echo ---
echo ''
echo '```'
wrk http://127.0.0.1:8000 -d 10 -t 2 -c 200
#-H "Hello, world\n"
echo '```'
