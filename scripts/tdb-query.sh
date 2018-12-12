#!/bin/sh
# some INSERTs
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_canton2canton.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_district2canton.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_district2code.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_district2codeoptional.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2canton.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2code.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2codeoptional.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2dbpedia.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2district.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2mutation.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2status.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2event.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_district2event.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2munid.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2classes.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2classes_hack.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_district2classes.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2swisstopo.rq
tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2wikidata.rq
#tdbupdate --loc=target/tdb --update=construct/eCH0071/map_municipality2eingemeindung.rq

# and after that cleanup
#tdbupdate --loc=target/tdb --update=construct/delete-something.rq
