# TC Slowify
# Shell scripts to help you simulate slow network connections
# By Will Bradley
# Thanks to https://gist.github.com/trongthanh/1196596
# Released via the Unlicense (see LICENSING.txt)


echo ""
read -e -i "lo" -p "Interface name to un-limit (ex: `ls -C /sys/class/net | sed 's/\s\+/, /g'`): " ifname

sudo tc qdisc del dev $ifname root

echo ""
echo "Removed limiter; $ifname is now:"
echo ""

sudo tc -s qdisc ls dev $ifname
