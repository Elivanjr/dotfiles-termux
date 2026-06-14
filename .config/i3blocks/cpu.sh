#!/data/data/com.termux/files/usr/bin/bash
read cpu user nice system idle iowait irq softirq steal guest < /proc/stat
prev_idle=$idle
prev_total=$((user+nice+system+idle+iowait+irq+softirq+steal))

sleep 1

read cpu user nice system idle iowait irq softirq steal guest < /proc/stat
total=$((user+nice+system+idle+iowait+irq+softirq+steal))

diff_total=$((total-prev_total))
diff_idle=$((idle-prev_idle))

echo $((100*(diff_total-diff_idle)/diff_total))"%"
