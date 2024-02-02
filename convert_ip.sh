#!/usr/bin/env bash
set -e

env="$1" # prd, stg, dev
ip="$2" # e.g. 172.X.0.0/20

case $env in
  prd)
    ip="${ip/172.X/172.16}"
    ip="${ip/10.18X/10.181}"
    ;;
  stg)
    ip="${ip/172.X/172.17}"
    ip="${ip/10.18X/10.182}"
    ;;
  dev)
    ip="${ip/172.X/172.18}"
    ip="${ip/10.18X/10.183}"
    ;;
  *)
    echo "Invalid env: $env" 1>&2
    exit 1
    ;;
esac

# cidr -> subnet mask
ip="${ip/\/20//255.255.240.0}"
ip="${ip/\/24//255.255.255.0}"

echo "$ip"
