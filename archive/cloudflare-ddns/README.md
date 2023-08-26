Don't use docker for this. Instead, install the ddclient plugin
in opnsense and configure it as explained below.

Basic configuration
===================

Within OPNsense, go to “Services > Dynamic DNS > Settings” and add a new dynamic DNS configuration and enter the values that fit your configuration:

Enabled: true
Service: Cloudflare
Username: E-Mail address of your account
Password: Global API key for your account (Open Cloudflare > My Account > API Tokens > Global API Key > View)
Zone: your.domain (e.g. arminreiter.com)
Hostname: full domain name you want to update (e.g. dyn.arminreiter.com)
Check ip method: Interface
Force SSL: true
Interface to monitor: WAN

Advanced configuration
======================



To configure ddclient, edit the following file:

	/usr/local/etc/ddclient.conf

If you would like to run ddclient as a daemon add the
following line to /etc/rc.conf

	ddclient_enable="YES"

If you would like to force ddclient to update your account
daily regardless of IP changes add the following line to
your /etc/periodic.conf

	daily_ddclient_force_enable="YES"
