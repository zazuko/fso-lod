#!/usr/bin/env bash
set -ueo pipefail
curl -n  --data-urlencode "query@construct/agvch/clear-graph.rq" $ENDPOINT/update
curl -n  --data-urlencode "query@construct/agvch/municipality-active.rq" $ENDPOINT/update
curl -n  --data-urlencode "query@construct/agvch/municipality-abandoned.rq" $ENDPOINT/update
curl -n  --data-urlencode "query@construct/agvch/canton.rq" $ENDPOINT/update
curl -n  --data-urlencode "query@construct/agvch/canton-translation.rq" $ENDPOINT/update
