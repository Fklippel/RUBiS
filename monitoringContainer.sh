#!/bin/bash

echo "timestamp,container,cpu_perc,mem_usage,mem_perc,net_io,block_io"

while true; do
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  docker stats --no-stream --format "{{.Name}},{{.CPUPerc}},{{.MemUsage}},{{.MemPerc}},{{.NetIO}},{{.BlockIO}}" rubis-web-1 rubis-db-1 | \
  while IFS=',' read -r name cpu mem_usage mem_perc net_io block_io; do
    echo "$timestamp,$name,$cpu,$mem_usage,$mem_perc,$net_io,$block_io"
  done
  sleep 2
done
