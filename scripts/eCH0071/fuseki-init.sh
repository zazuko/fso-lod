#!/bin/sh
source scripts/env.sh
curl -u admin:cinderella --data "dbType=tdb&dbName=fso"  http://$FUSEKI_HOST:3030/$/datasets
curl -i -X DELETE -u admin:cinderella -G http://$FUSEKI_HOST:3030/fso/data --data-urlencode graph=http://example.org/inference
curl -X PUT -u admin:cinderella -T target/complete.nt -G -H "Content-Type: application/n-triples" http://admin:cinderella@$FUSEKI_HOST:3030/fso/data --data-urlencode graph=http://example.org/fso

