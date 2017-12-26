#!/bin/bash

#	"https://api.cardio.ai/v1/evaluation/plot"

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "X-Api-Key: cr6JEi37Z1KRBnTBhmEWy_GuSOW5hKKgn2XFEYpCS8Zwyw6Umxuq6pPBO3wGSS5pdfnHrd4erWuB" \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./demorec_std12_5min.json" \
	--output "./eval_plot_response.png" \
	"http://192.168.80.102:50100/v1/evaluation/plot"
