#!/bin/bash

msg=$(echo "payload={\"channel\": \"#dev\", \"text\": \"`$1:$2` built at $3\"}")
curl -X POST --data-urlencode "$msg" $SLACK_URL
