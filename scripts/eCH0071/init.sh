#!/bin/sh
rm out/*.nt
java -jar ~/workspace.p3/RMLProcessor/target/RMLMapper-0.1.jar -M eCH0071_150101.ttl -O out/complete.nt
perl -pi.back -e 's/(id\/canton\/)([A-Z]{2})/\1\L\2/' out/complete.nt
serdi -b -f -i turtle -o ntriples schema.ttl > out/schema.nt
cat out/*.nt > histgemeinde2015.nt
