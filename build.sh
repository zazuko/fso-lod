java -jar ~/workspace.p3/RMLProcessor/target/RMLMapper-0.1.jar -M eCH0071_150101.ttl -O out/complete.nt
serdi -b -f -i turtle -o ntriples codes.ttl > out/codes.nt
cat out/*.nt > histgemeinde2015.nt
