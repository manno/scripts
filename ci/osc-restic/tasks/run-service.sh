#!/bin/sh
if [ -z "$TOKEN" ]; then
  echo "Missing token in environment."
  env
  exit 1
fi
curl -sS -H "Authorization: Token $TOKEN" -X POST 'https://api.opensuse.org/trigger/runservice?project=home:mmanno&package=restic'
