#!/bin/sh
ENDPOINT=${ENDPOINT:=https://stardog.cluster.ldbar.ch/lindas}
echo "Posting to endpoint: $ENDPOINT"
curl -n \
     -X PUT \
     --http1.1 \
     -H Content-Type:application/n-triples \
     -T target/everything.nt  \
     -G $ENDPOINT \
     --data-urlencode graph=https://linked.opendata.swiss/graph/eCH-0071
