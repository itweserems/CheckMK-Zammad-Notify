#!/bin/bash
# Zammad Service

curl --insecure -X POST \
  -F "event_id=$NOTIFY_SERVICEPROBLEMID" \
  -F "host=$NOTIFY_HOSTNAME" \
  -F "service=$NOTIFY_SERVICEDESC" \
  -F "state=$NOTIFY_SERVICESTATE" \
  -F "text=$NOTIFY_SERVICEOUTPUT" \
  https://zammad.local/api/v1/integration/check_mk/d4e9682f38fe250d606abf1af8987725 # see Zammad Admin Panel > System > Integrations > Checkmk > Usage