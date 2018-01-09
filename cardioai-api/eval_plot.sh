#!/bin/bash

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "X-Api-Key: your-api-key" \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./demorec_easi_5min.json" \
	--output "./eval_plot_response.png" \
	"https://api.cardio.ai/v1/evaluation/plot"
