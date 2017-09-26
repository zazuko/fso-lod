#!/bin/sh
curl -G -H "Accept: application/n-triples" -o target/fso-clean-base.nt http://admin:cinderella@$FUSEKI_HOST:3030/fso/data --data-urlencode graph=http://example.com/fso
curl -G -H "Accept: application/n-triples" -o target/fso-clean-inference.nt http://admin:cinderella@$FUSEKI_HOST:3030/fso/data --data-urlencode graph=http://example.org/inference