#!/bin/bash

#	"https://api.cardio.ai/v1/evaluation/classify"

curl \
	--verbose \
	--max-time 60 \
	--request POST \
	--header "X-Api-Key: 6dtjQ3y5jJj9Pw8sfsiNPNu2lTzaR1Vh9qtHQOKN1WIongydH-2VfHbBj9AG-ebjCJSypT7FA0LF" \
	--header "Content-Type: application/json; charset=utf-8" \
	--data-binary "@./demorec_std12_5min.json" \
	"http://192.168.80.102:50100/v1/evaluation/classify"
