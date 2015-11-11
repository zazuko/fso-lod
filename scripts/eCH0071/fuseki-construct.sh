#!/bin/sh
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_district2canton.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_district2canton.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_district2code.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_district2code.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_district2codeoptional.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_district2codeoptional.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2canton.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2canton.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2code.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2code.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2codeoptional.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2codeoptional.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2dbpedia.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2dbpedia.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2district.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2district.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2mutation.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2mutation.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2status.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2status.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2event.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2event.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_district2event.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_district2event.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2munid.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2munid.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2classes.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2classes.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2classes_hack.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2classes_hack.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_district2classes.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_district2classes.nt
#curl -H "Accept: application/n-triples" --data-urlencode query@construct/eCH0071/map_municipality2eingemeindung.sparql http://$FUSEKI_HOST:3030/bfs/sparql -o target/map_municipality2eingemeindung.nt
