#!/bin/sh
source init.sh
source fuseki-init.sh
source fuseki-construct.sh
cat out/*.nt > complete-histgemeinde2015.nt
