TC Slowify
==========

Shell scripts to help you simulate slow network connections
-----------------------------------------------------------

*Requirements (generally included in Ubuntu, Fedora, OpenSuse, Gentoo, Debian, Mandriva, etc)*:
- tc (a Linux command, part of the iproute2 package)
- netem (included in the 2.6 Linux kernel)

*Usage*:

- ./apply.sh
  - Applies limiting rules; prompts you to select an interface name, rate, and latency
- ./remove.sh
  - Removes limiter from that interface
- ./status.sh
  - Shows rules on that interface (sometimes other rules may already exist, that's ok) 

*License*:

The Unlicense, see LICENSING.txt
