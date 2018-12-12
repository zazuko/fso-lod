#!/bin/sh
tdbdump --loc target/tdb | serdi -i nquads -o ntriples - | sed '\#example.org#d' | gzip --stdout > target/everything.nt.gz