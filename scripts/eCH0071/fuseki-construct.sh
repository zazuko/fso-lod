#!/bin/sh
source scripts/env.sh

FUSEKI_UPDATE=http://$FUSEKI_HOST:3030/fso/update
function sparqlu { curl -H "Accept: text/turtle" --data-urlencode update@$1 $2 ; }

sparqlu construct/eCH0071/map_district2canton.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_district2code.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_district2codeoptional.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2canton.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2code.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2codeoptional.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2dbpedia.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2district.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2mutation.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2status.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2event.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_district2event.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2munid.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2classes.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_municipality2classes_hack.rq $FUSEKI_UPDATE
sparqlu construct/eCH0071/map_district2classes.rq $FUSEKI_UPDATE
#sparqlu construct/eCH0071/map_municipality2eingemeindung.rq $FUSEKI_UPDATE