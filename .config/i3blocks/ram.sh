#!/data/data/com.termux/files/usr/bin/bash
used=$(free | awk '/Mem:/ {print $3}')
total=$(free | awk '/Mem:/ {print $2}')
echo "  $((used*100/total))%"
