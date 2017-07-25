#!/bin/bash

curl \
	--verbose \
	--request POST \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./std12_microvolts_10min.json" \
	--output "./eval_classify_response.json" \
	"https://api.cardio.ai/v1/evaluation/classify"

