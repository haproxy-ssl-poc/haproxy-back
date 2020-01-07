#!/bin/sh

set e

docker run -d --network ha --rm -v$(pwd)/certs:/etc/certs -p8443:443 -p8090:8080 --name greetings1 abderrazak/kyr-greetings:1.0.0-SNAPSHOT
docker run -d --network ha --rm -v$(pwd)/certs:/etc/certs -p9443:443 -p8091:8080 --name greetings2 abderrazak/kyr-greetings:1.0.0-SNAPSHOT

