# ISO 20022 camt.53 (account statement) mapping to RDF

This is a super minimal version of #topic. Pretty much everything can and should be improved. Mapping file can be found in [config/cam53.ttl](config/cam53.ttl). It was created for and tested with account statements from Postfinance in Switzerland only.

Some ideas:

* More specific ontology, maybe [Payments Ontology](https://data.gov.uk/resources/payments) or alike. This seems to be RDF Data Cube based as well, which was my initial idea

For this version I used [RML V4.0.0](https://github.com/RMLio/rmlmapper-java), [carml](https://github.com/carml/carml) did not want to create any triples, no idea why.

The reason why I started this was simple: I needed to figure out some payments I did during the year and I could not find any useful open source tooling for it.

Turns out once this stuff is RDF, it is super simple to query.

I simply generated the file(s), added it into one big N-Triples file and queried it via `sparql` command line tool from [ARQ](https://jena.apache.org/documentation/query/index.html):

```shell
sparql --results=csv --data=target/complete.nt --query=sparql/myquery.rq > myresult.csv
```

