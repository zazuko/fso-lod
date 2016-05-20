#!/bin/sh
serdi -i turtle -o ntriples -p a input/web/about.ttl  > target/website.nt
serdi -i turtle -o ntriples -p b input/web/apps.ttl >> target/website.nt
serdi -i turtle -o ntriples -p c input/web/contact.ttl >> target/website.nt
serdi -i turtle -o ntriples -p d input/web/datasets.ttl >> target/website.nt
serdi -i turtle -o ntriples -p e input/web/linkeddata.ttl >> target/website.nt
serdi -i turtle -o ntriples -p e input/web/index.ttl >> target/website.nt
