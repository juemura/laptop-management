#!/bin/bash
echo "[laptop-management] $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
t0=$(date '+%s')
git fetch origin
git reset --hard origin/master
cd $(dirname ${BASH_SOURCE[0]})
./run
t1=$(date '+%s')
dt=$((t1 - t0))
echo "Finished in ${dt} seconds"
