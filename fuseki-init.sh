#!/bin/sh
export PATH=$PATH:/Users/ktk/Applications/Apache/jena-fuseki-1.1.1
s-update --service http://localhost:3030/bfs/update 'CLEAR default'
s-put --verbose http://localhost:3030/bfs/data default histgemeinde2015.nt 
