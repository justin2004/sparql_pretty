# sparql_pretty

## what 
pretty print your SPARQL queries

## how
use Apache Jena's qparse functionality

## use
- have docker installed
- cat some.rq | docker run --rm -i justin2004/sparql_pretty

e.g.
```
$ cat some.rq
prefix schema: <https://schema.org/>
select * where
{?book a schema:Book  optional {?book schema:encodingFormat ?format  }}
$
$ cat some.rq | docker run --rm -i justin2004/sparql_pretty
PREFIX  schema: <https://schema.org/>

SELECT  *
WHERE
  { ?book  a  schema:Book
    OPTIONAL
      { ?book  schema:encodingFormat  ?format }
  }

```
