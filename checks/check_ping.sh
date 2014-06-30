#!/bin/bash
# stupid simple keepalived check for uplink monitoring
# it just pings some well-known IP address once and returns ping's exit code
# I strongly suggest to set IP as $TARGET - this will prevent DNS fuckups
# triggering VRRP failovers...
TARGET=8.8.8.8
PING=ping

$PING -c1 $TARGET &>/dev/null
exit $?
