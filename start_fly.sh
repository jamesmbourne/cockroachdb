#!/bin/sh

set -eu

echo "Starting on Cockroach DB on Fly ..."
echo exec /cockroach/cockroach start \
  --insecure \
  --logtostderr \
  --locality=region=$FLY_REGION \
  --max-sql-memory 64MiB \
  --cache 64MiB \
  --cluster-name=$FLY_APP_NAME \
  --join=fra.$FLY_APP_NAME.internal,cdg.$FLY_APP_NAME.internal,ams.$FLY_APP_NAME.internal,lhr.$FLY_APP_NAME.internal \
  --advertise-addr=$FLY_REGION.$FLY_APP_NAME.internal
exec /cockroach/cockroach start \
  --insecure \
  --logtostderr \
  --locality=region=$FLY_REGION \
  --max-sql-memory 64MiB \
  --cache 64MiB \
  --cluster-name=$FLY_APP_NAME \
  --join=fra.$FLY_APP_NAME.internal,cdg.$FLY_APP_NAME.internal,ams.$FLY_APP_NAME.internal,lhr.$FLY_APP_NAME.internal \
  --advertise-addr=$FLY_REGION.$FLY_APP_NAME.internal