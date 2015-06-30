#!/bin/sh
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2canton.sparql http://localhost:3030/bfs/sparql -o out/map_district2canton.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2code.sparql http://localhost:3030/bfs/sparql -o out/map_district2code.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2codeoptional.sparql http://localhost:3030/bfs/sparql -o out/map_district2codeoptional.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2canton.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2canton.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2code.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2code.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2codeoptional.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2codeoptional.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2dbpedia.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2dbpedia.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2district.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2district.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2mutation.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2mutation.nt
#curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2status.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2status.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2event.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2event.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2event.sparql http://localhost:3030/bfs/sparql -o out/map_district2event.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2munid.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2munid.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2classes.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2classes.nt
curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_district2classes.sparql http://localhost:3030/bfs/sparql -o out/map_district2classes.nt
#curl -H "Accept: application/n-triples" --data-urlencode query@construct/map_municipality2eingemeindung.sparql http://localhost:3030/bfs/sparql -o out/map_municipality2eingemeindung.nt
