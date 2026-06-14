#!/data/data/com.termux/files/usr/bin/bash

if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
    echo "ONLINE"
else
    echo "OFFLINE"
fi
