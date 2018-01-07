#!/bin/bash

msg=$(echo "payload={\"channel\": \"#dev\", \"text\": \"$1 built at $2\"}")
curl -X POST --data-urlencode "$msg" $SLACK_URL
