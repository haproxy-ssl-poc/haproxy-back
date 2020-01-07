#!/bin/sh

docker run -it --network ha --rm -v/Users/abderrazak.bouadma/job/zoubia/cert:/etc/certs -p8443:443 -p8090:8080 --env server1  --name greetings1 abderrazak/kyr-greetings:1.0.0-SNAPSHOT
