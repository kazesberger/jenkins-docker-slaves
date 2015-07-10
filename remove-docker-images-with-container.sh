#!/bin/bash

docker ps -a | grep -v CONTAINER | awk '{print $1" "$2}' > /tmp/docker_ps_a.log

while read p; do
  docker rm `echo $p | awk '{print $1}'`
done < /tmp/docker_ps_a.log

while read p; do
  docker rmi `echo $p | awk '{print $2}'`
done < /tmp/docker_ps_a.log
