#!/bin/sh
roqet -q construct/map_district2canton.sparql -D complete.nt
roqet -q construct/map_municipality2canton.sparql -D complete.nt
roqet -q construct/map_municipality2district.sparql -D complete.nt