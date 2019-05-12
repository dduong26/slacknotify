#!/bin/bash

CHANNEL="#your_channel"
USERNAME="Username"
MSG=$1

PAYLOAD="payload={\"channel\": \"$CHANNEL\", \"username\": \"$USERNAME\", \"text\": \"$*\"}"
HOOK=https://hooks.slack.com/services/<webhook_url>

curl -X POST --data-urlencode "$PAYLOAD" "$HOOK"
