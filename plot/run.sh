#!/usr/bin/env bash

FILE_NAME="demorec_std12_5min.json"

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@$(dirname "${0}")/../records/${FILE_NAME}" \
	--output "./plot_response.png" \
	"https://stage.web.cardio.ai/rest/v1/plot"
