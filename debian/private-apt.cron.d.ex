#
# Regular cron jobs for the private-apt package
#
0 4	* * *	root	[ -x /usr/bin/private-apt_maintenance ] && /usr/bin/private-apt_maintenance
