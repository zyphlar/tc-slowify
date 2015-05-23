# TC Slowify
# Shell scripts to help you simulate slow network connections
# By Will Bradley
# Thanks to https://gist.github.com/trongthanh/1196596
# Released via the Unlicense (see LICENSING.txt)

echo ""
read -e -i "lo" -p "Interface name to limit (ex: `ls -C /sys/class/net | sed 's/\s\+/, /g'`): " ifname
read -e -i "56kbps" -p "Limit amount (including units, ex: 56kbps): " limit
read -e -i "200ms" -p "Latency amount (including units, ex: 200ms): " latency

sudo tc qdisc add dev $ifname root handle 1: htb default 12 
sudo tc class add dev $ifname parent 1:1 classid 1:12 htb rate $limit ceil $limit
sudo tc qdisc add dev $ifname parent 1:12 netem delay $latency

echo ""
echo "Set limiter on $ifname to:"
echo ""

sudo tc -s qdisc ls dev $ifname
