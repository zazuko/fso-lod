#!/bin/sh
rm target/*.nt
java -jar lib/RMLMapper-0.1.jar -M config/eCH0071.ttl -O target/complete.nt
#perl -pi.back -e 's/(id\/canton\/)([A-Z]{2})/\1\L\2/' target/complete.nt
serdi -b -f -i turtle -o ntriples attic/codes.ttl >> target/complete.nt
#cat target/*.nt > histgemeinde2015.nt
