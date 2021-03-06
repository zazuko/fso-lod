# eCH0071: Important Classes & Attributes

Based on the XML eCH0071 vocabulary we defined some basic classes in RDF. Sample SPARQL queries can be found [here](sparql.md).

## Municipality

There are different representations of a municipality in our ontology. The original eCH0071 standard is using a pretty "interesting" model which for example represents a lake as a municipality as well. To facilitate querying we introduced some new classes.

### gont:Municipality

The non-versioned instance of a Swiss municipality. This version contains the 3-4 digit number which is often used to reference a municipality. Note that this number is by definition ambiguous. It is only unique if the dimension time is added and should thus not be used if possible (but yes, everyone does).

Note that there is no name assigned with this URI for the simple reason that the name is only unique in the versioned municipality. If you need the name you need to follow the attribute `gont:municipalityVersion` to find the correct representation of the municipality in time.

* Definition: [gont:Municipality](https://gont.ch/Municipality)
* URI concept: `http://classifications.data.admin.ch/municipality/<ID>` where `<ID>` is the 3-4 digit integer (`municipalityId` in eCH0071).
* Sample: [http://classifications.data.admin.ch/municipality/371](http://classifications.data.admin.ch/municipality/371) - Biel/Bienne
* Important attributes:
    * [gont:id](https://gont.ch/id) - the ID as an integer
    * [gont:municipalityVersion](https://gont.ch/municipalityVersion) - URI to the versioned municipalities (at least one)
    * [owl:sameAs](http://www.w3.org/2002/07/owl#sameAs) - a link to the DBpedia (Wikipedia) resource representing this particular municipality. This is generated by [this query](https://github.com/zazuko/fso-lod/blob/master/construct/eCH0071/map_municipality2dbpedia.sparql) and might or might not be appropriate/available. 

### gont:MunicipalityVersion

The versioned instance of a Swiss municipality. Among others you will find the name of the municipality here. 

* Definition: [gont:MunicipalityVersion](https://gont.ch/MunicipalityVersion)
* URI concept: `http://classifications.data.admin.ch/municipalityversion/<ID>` where `<ID>` is the 5 digit integer (`historyMunicipalityId` in eCH0071).
* Sample: [http://classifications.data.admin.ch/municipalityversion/14506](http://classifications.data.admin.ch/municipalityversion/14506) - Biel/Bienne
* Important attributes:
    * [gont:id](https://gont.ch/id) - the ID as an integer
    * [gont:longName](https://gont.ch/longName) - the name of the municipality
    * [gont:municipality](https://gont.ch/municipality) - link to the non-versioned instance of this particular municipality
    * [gont:admissionEvent](https://gont.ch/admissionEvent) - the event which is responsible for this instance of the municipality
    * [gont:abolitionEvent](https://gont.ch/abolitionEvent) - the event which is responsible for the abolition of this instance of the municipality. This is an optional attribute, if it is missing this instance of the municipality is the most recent one
    * [gont:canton](https://gont.ch/canton) - a link to the canton this instance of the municipality belongs to
    * [gont:district](https://gont.ch/district) - a link to the district this instance of the municipality belongs to


### gont:PoliticalMunicipality

[gont:PoliticalMunicipality](https://gont.ch/PoliticalMunicipality) is a class which simplifies querying for "real" municipalities. This excludes special cases that eCH0071 models as a community, like lakes. Only used in conjunction with `gont:Municipality`.

### gont:MunicipalityChangeEvent

A municipality change event represents a change in the life of a non-versioned municipality by adding an additional `gont:municipalityVersion` attribute. However, the event itself is attached to the versioned instance of the municipality. It provides a two attributes which are required to figure out what exactly happened at this point in time.

* Definition: [gont:MunicipalityChangeEvent](https://gont.ch/MunicipalityChangeEvent)
* URI concept: `hhttp://classifications.data.admin.ch/event/hgv/municipality/<ID>` where `<ID>` is the 4 digit integer (admission/abolition number in eCH0071).
* Sample: [http://classifications.data.admin.ch/event/hgv/municipality/2826](http://classifications.data.admin.ch/event/hgv/municipality/2826)
* Attributes:
    * [gont:id](https://gont.ch/id) - the ID as an integer
    * [gont:date](https://gont.ch/date) - the date of this event as an [xsd:date](http://www.datypic.com/sc/xsd/t-xsd_date.html))

See the SPARQL query examples about how this event is used.

## District

Documentation work in progress.

### gont:DistrictEntity

Generic district entity which is base class for several other classes.

### gont:District

The district itself. 

### gont:DistrictEntityVersion

Versioned district.

### gont:DistrictChangeEvent

Represents a change in districts.

## Canton

Documentation work in progress.

### gont:Canton

A Canton.

### gont:DistrictlessCanton

Special case of a canton which does not have districts. 

## Special Classes

Documentation work in progress.

### gont:CantonalLakePortion

[gont:CantonalLakePortion](https://gont.ch/CantonalLakePortion) is a class which simplifies querying. In the original model lakes are represented as a special type of municipality.

### gont:DistrictFreeArea

[gont:DistrictFreeArea](https://gont.ch/DistrictFreeArea) is a class which simplifies querying. In the original model distric free areas are represented as a special type of district.

### gont:MunicipalityFreeArea

[gont:MunicipalityFreeArea](https://gont.ch/MunicipalityFreeArea) is a class which simplifies querying. In the original model municipality free areas are represented as a special type of municipality.

### gont:ChangeEvent

Superclass for events.

### gont:TerritorialCommunity

Superclass for several things.



