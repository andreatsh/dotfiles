#!/bin/bash

INTERFACE="${BLOCK_INSTANCE:-enp4s0}"

[ "$(</sys/class/net/$INTERFACE/operstate)" != "up" ] && exit 0

SPEED="$(</sys/class/net/$INTERFACE/speed)"

IP="$(ip addr show $INTERFACE | awk '/inet /{ sub("/24",""); print $2 }')"
IP="${IP:-0.0.0.0}"

[ -n "$SPEED" ] && echo "$IP ($SPEED Mbits/s)" || echo "$IP"

