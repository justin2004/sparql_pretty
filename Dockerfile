# FROM debian:11
FROM  alpine:3.15.0
# RUN apt-get update  && apt-get install -y openjdk-11-jre wget
RUN apk update && apk add openjdk11-jre wget
WORKDIR /root
RUN wget 'https://dlcdn.apache.org/jena/binaries/apache-jena-4.7.0.tar.gz' && tar -xaf apache-jena-4.7.0.tar.gz
ENTRYPOINT apache-jena-4.7.0/bin/qparse --print=query --query /dev/stdin
# cat a.rq | docker run --rm -i justin2004/sparql_pretty
