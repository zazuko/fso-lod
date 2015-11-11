#!/bin/sh
# TODO I think this can be nuked
roqet -q construct/eCH0071/map_district2canton.sparql -D complete.nt
roqet -q construct/eCH0071/map_municipality2canton.sparql -D complete.nt
roqet -q construct/eCH0071/map_municipality2district.sparql -D complete.nt