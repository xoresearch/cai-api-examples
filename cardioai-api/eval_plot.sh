#!/bin/bash

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./demorec_std12_5min.json" \
	--output "./eval_plot_response.png" \
	"https://api.cardio.ai/v1/evaluation/plot"
