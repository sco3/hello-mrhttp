#!/usr/bin/env -S bash



./cpu-governor.sh
server=$(pgrep -f mrhttp >/dev/null && echo 'mrhttp')

echo $(grep 'model name' /proc/cpuinfo | head -n 1 | cut -d: -f2 | xargs)
echo ===
echo "$server" 
echo ---
echo ''
echo '```'
wrk http://127.0.0.1:8000 -d 10 -t 2 -c 200
#-H "Hello, world\n"
echo '```'
