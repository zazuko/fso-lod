#!/bin/sh
rapper -i turtle -o ntriples input/meta/about.ttl  > target/website.nt
rapper -i turtle -o ntriples input/meta/apps.ttl >> target/website.nt
rapper -i turtle -o ntriples input/meta/contact.ttl >> target/website.nt
rapper -i turtle -o ntriples input/meta/datasets.ttl >> target/website.nt
rapper -i turtle -o ntriples input/meta/root.ttl >> target/website.nt
