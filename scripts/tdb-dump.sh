#!/bin/sh
tdbdump --loc target/tdb | serdi -i nquads -o ntriples - | sed '\#example.org#d' | sed '/www.ech.ch\/xmlns\/eCH-0071\/1\//d' | gzip --stdout > target/everything.nt.gz