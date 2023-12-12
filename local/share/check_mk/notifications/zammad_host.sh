#!/bin/bash
# Zammad Host

curl --insecure -X POST \
  -F "event_id=$NOTIFY_HOSTPROBLEMID" \
  -F "host=$NOTIFY_HOSTNAME" \
  -F "state=$NOTIFY_HOSTSTATE" \
  -F "text=$NOTIFY_HOSTOUTPUT" \
  https://zammad.local/api/v1/integration/check_mk/d4e9682f38fe250d606abf1af8987725 # see Zammad Admin Panel > System > Integrations > Checkmk > Usage