#!/bin/bash

curl \
	--verbose \
	--request POST \
	--header "Content-Type: application/json" \
	--data-binary "@./eval_classify_std.json" \
	"https://api.cardio.ai/evaluation/classify"

