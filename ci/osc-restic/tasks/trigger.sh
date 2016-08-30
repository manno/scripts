#!/bin/sh
curl -sS -H "Authorization: Token $TOKEN" -X POST 'https://api.opensuse.org/trigger/runservice?project=home:mmanno&package=restic'
