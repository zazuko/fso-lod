#!/bin/sh
rapper -i turtle -o ntriples input/web/about.ttl  > target/website.nt
rapper -i turtle -o ntriples input/web/apps.ttl >> target/website.nt
rapper -i turtle -o ntriples input/web/contact.ttl >> target/website.nt
rapper -i turtle -o ntriples input/web/datasets.ttl >> target/website.nt
rapper -i turtle -o ntriples input/web/root.ttl >> target/website.nt
