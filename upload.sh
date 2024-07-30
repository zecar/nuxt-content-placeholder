#! /usr/bin/env bash
set -e

curl -v \
--fail-with-body \
--insecure \
-F content=@content.zip \
-H "X-Shopware-Api-Key: test" \
"http://localhost:3000/api/academy/ingest?dry=1"
