#!/bin/sh

mvn -DskipTests clean package  -Dimage=abderrazak/kyr-greetings:1.0.0-SNAPSHOT
docker pull abderrazak/kyr-greetings:1.0.0-SNAPSHOT
