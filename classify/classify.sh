#!/usr/bin/env bash

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "X-Api-Key: your-api-key" \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@$(dirname "${0}")/../records/demorec_lead1_5min.json" \
	"https://stage.web.cardio.ai/v1/classify"
