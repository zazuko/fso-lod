TODAY="$(date "+%Y-%m-%d")"
NOW="$(date -u "+%Y-%m-%dT%H:%M:%SZ")"
VALIDFROM="$(grep validFrom tmp/eCH0071_*.xml | cut -f2 -d">" | cut -f1 -d"<")"
cat input/void.ttl| sed "s/%%DATEISSUED%%/${TODAY}/g" | sed "s/%%DATECREATED%%/${NOW}/g" | sed "s/%%VALIDFROM%%/${VALIDFROM}/g" > target/void.ttl
