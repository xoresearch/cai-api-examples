#!/bin/bash

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./std12_indian3.json" \
	--output "./eval_classify_response.json" \
	"https://api.cardio.ai/v1/evaluation/classify"

