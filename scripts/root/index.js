/*
* This script generates the non project related content like web site content and metadata like VoID & co
* Author: Adrian Gschwend
*
* */

var rdf = require('rdf-ext');
var showdown  = require('showdown');
var fs = require('fs');

var markdown = 'input/meta/INDEX.md';

var converter = new showdown.Converter();

var text = fs.readFileSync(markdown, 'utf8').toString();

var html  = converter.makeHtml(text);


var subject = rdf.createNamedNode("http://data.admin.ch/");
var predicate = rdf.createNamedNode("http://www.w3.org/1999/02/22-rdf-syntax-ns#type");
var object = rdf.createNamedNode("http://schema.org/WebPage");

var triple = rdf.createTriple(subject, predicate, object);

var graph = rdf.createGraph();

graph.add(triple);

subject = rdf.createNamedNode("http://data.admin.ch/");
predicate = rdf.createNamedNode("http://schema.org/articleBody");
object = rdf.createLiteral(html);

triple = rdf.createTriple(subject, predicate, object);

graph.add(triple);

console.log(graph.toString());
