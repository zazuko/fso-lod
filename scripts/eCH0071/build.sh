#!/bin/sh
export FUSEKI_HOST=192.168.64.2
if [ -z $FUSEKI_HOST ]
then
  export FUSEKI_HOST="localhost"
fi
source init.sh
source fuseki-init.sh
source fuseki-construct.sh
cat target/*.nt | sed '/www.ech.ch\/xmlns\/eCH-0071\/1\//d' > target/eCH0071-final.nt