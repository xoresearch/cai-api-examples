#!/usr/bin/env bash

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "X-Api-Key: your-api-key" \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@$(dirname "${0}")/../records/demorec_easi_5min.json" \
	--output "./plot_response.png" \
	"https://stage.web.cardio.ai/v1/plot"