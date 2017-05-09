#!/bin/sh
curl -n \
     -X PUT \
     -H Content-Type:application/n-triples \
     -T target/eCH0071-final.nt \
     -G https://lindasprd.netrics.ch:8443/lindas \
     --data-urlencode graph=https://linked.opendata.swiss/graph/eCH-0071