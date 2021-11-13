#!/bin/bash
#set -e

# ADD INFLUXDB K6 DATASOURCE
curl -s -H "Content-Type: application/json" \
    -XPOST http://admin:nimda321@localhost:3000/api/datasources \
    -d @- <<EOF
{
    "name": "influxdb-k6",
    "type": "influxdb",
    "access": "proxy",
    "url": "http://influxdb:8086",
    "database": "k6",
}
EOF

## ADD PROMETHEUS DATASOURCE
curl -s -H "Content-Type: application/json" \
    -XPOST http://admin:nimda321@localhost:3000/api/datasources \
    -d @- <<EOF
{
    "name": "prometheus",
    "type": "prometheus",
    "access": "proxy",
    "url": "http://prometheus:9090"
}
EOF

