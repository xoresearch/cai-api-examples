#!/bin/bash

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./demorec_easi_5min.json" \
	"https://api.cardio.ai/v1/evaluation/classify"
