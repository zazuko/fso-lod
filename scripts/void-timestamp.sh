TODAY="$(date "+%Y-%m-%d")"
NOW="$(date -u "+%Y-%m-%dT%H:%M:%SZ")"
cat input/void.ttl| sed "s/%%DATEISSUED%%/${TODAY}/g" | sed "s/%%DATECREATED%%/${NOW}/g" > target/void.ttl