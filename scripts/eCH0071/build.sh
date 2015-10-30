#!/bin/sh
source init.sh
source fuseki-init.sh
source fuseki-construct.sh
cat out/*.nt | sed '/www.ech.ch\/xmlns\/eCH-0071\/1\//d' > complete-histgemeinde2015.nt