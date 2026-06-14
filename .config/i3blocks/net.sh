#!/data/data/com.termux/files/usr/bin/bash
ping -c 1 8.8.8.8 &>/dev/null && echo "   ONLINE" || echo "   OFFLINE"
