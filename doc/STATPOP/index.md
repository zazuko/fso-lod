# STATPOP

Note that this is a demo dataset. It is currently not actively maintained. It is using the [Data Cube](http://www.w3.org/TR/vocab-data-cube/) vocabulary.

The data can be queried in the graph `http://lindas-data.ch/resource/statpop`.

* Sample SPARQL query: [Get a list of all dimensions](http://data.admin.ch/sparql/#query=PREFIX+rdfs%3A+++%3Chttp%3A%2F%2Fwww.w3.org%2F2000%2F01%2Frdf-schema%23%3E%0APREFIX+schema%3A+%3Chttp%3A%2F%2Fschema.org%2F%3E%0APREFIX+xsd%3A+%3Chttp%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%3E%0APREFIX+gont%3A+%3Chttps%3A%2F%2Fgont.ch%2F%3E%0APREFIX+qb%3A+%3Chttp%3A%2F%2Fpurl.org%2Flinked-data%2Fcube%23%3E%0A%0ASELECT+DISTINCT+%3Fs%0AFROM+%3Chttp%3A%2F%2Flindas-data.ch%2Fresource%2Fstatpop%3E%0AWHERE%0A%7B%0A++%3Fs+a+qb%3ADimensionProperty+.%0A%7D&contentTypeConstruct=text%2Fturtle&contentTypeSelect=application%2Fsparql-results%2Bjson&endpoint=http%3A%2F%2Fdata.admin.ch%2Fquery&requestMethod=POST&tabTitle=Query+1&outputFormat=table)

## Datasets

* http://data.admin.ch/bfs/dataset/DSD_T_PERSON_STATTAB-01-2A01

## Dimensions

* http://data.admin.ch/bfs/property/AGE
* http://data.admin.ch/bfs/property/HISTREPORTINGMUNICIPALITYID
* http://data.admin.ch/bfs/property/NATIONALITYCATEGORY
* http://data.admin.ch/bfs/property/POPULATIONTYPE
* http://data.admin.ch/bfs/property/REPORTINGMUNICIPALITYID
* http://data.admin.ch/bfs/property/SEX
* http://data.admin.ch/bfs/property/STATDATE
* http://data.admin.ch/bfs/property/STATYEAR

## Measures

* http://data.admin.ch/bfs/property/NB_PERSON
