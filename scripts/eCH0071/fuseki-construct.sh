#!/bin/sh
source scripts/env.sh

FUSEKI_UPDATE=http://$FUSEKI_HOST:3030/fso/update
function sparqlu { curl -H "Accept: text/turtle" --data-urlencode update@$1 $2 ; }

sparqlu construct/map_district2canton.sparql $FUSEKI_UPDATE
sparqlu construct/map_district2code.sparql $FUSEKI_UPDATE
sparqlu construct/map_district2codeoptional.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2canton.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2code.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2codeoptional.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2dbpedia.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2district.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2mutation.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2status.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2event.sparql $FUSEKI_UPDATE
sparqlu construct/map_district2event.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2munid.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2classes.sparql $FUSEKI_UPDATE
sparqlu construct/map_municipality2classes_hack.sparql $FUSEKI_UPDATE
sparqlu construct/map_district2classes.sparql $FUSEKI_UPDATE
#sparqlu construct/map_municipality2eingemeindung.sparql $FUSEKI_UPDATE