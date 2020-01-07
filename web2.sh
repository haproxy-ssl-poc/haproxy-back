#!/bin/sh

docker run -it --network ha --rm -v/Users/abderrazak.bouadma/job/zoubia/cert:/etc/certs -p9443:443 -p8091:8080 --env server2  --name greetings2 abderrazak/kyr-greetings:1.0.0-SNAPSHOT
