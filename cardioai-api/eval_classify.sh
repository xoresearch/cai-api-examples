#!/bin/bash

curl \
	--verbose \
	--request POST \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./eval_classify_request.json" \
	--output "./eval_classify_response.json" \
	"https://api.cardio.ai/v1/evaluation/classify"

