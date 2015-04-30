#!/bin/sh
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2canton.sparql http://localhost:3030/bfstdb/sparql -o out/map_district2canton.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2code.sparql http://localhost:3030/bfstdb/sparql -o out/map_district2code.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2codeoptional.sparql http://localhost:3030/bfstdb/sparql -o out/map_district2codeoptional.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2canton.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2canton.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2code.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2code.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2codeoptional.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2codeoptional.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2dbpedia.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2dbpedia.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2district.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2district.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2mutation.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2mutation.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2status.sparql http://localhost:3030/bfstdb/sparql -o out/map_municipality2status.nt
