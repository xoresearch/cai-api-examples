#!/usr/bin/env bash

FILE_NAME="12_channels_82sec.scp"
#FILE_NAME="8_channels_10sec.scp"
#FILE_NAME="3_channels_5min.json"

FILE_PATH=$(dirname "${0}")/../records/${FILE_NAME}

# Make sure the input file exists
if [ ! -f ${FILE_PATH} ]; then
	echo "File at \"${FILE_PATH}\" doesn't exist, interrupted."
	exit 1
fi

# Choose the appropriate content type
CONTENT_TYPE=""

case ${FILE_NAME} in
	*.json)
		CONTENT_TYPE="application/json; charset=utf-8"
		;;
	*.edf)
		CONTENT_TYPE="application/edf"
		;;
	*.scp)
		CONTENT_TYPE="application/scp"
		;;
	*)
		echo "File at \"${FILE_PATH}\" has unsupported extension, interrupted."
		exit 1
		;;
esac

# Execute remote call
curl \
	--verbose \
	--max-time 120 \
	--request POST \
	--header "Content-Type: ${CONTENT_TYPE}" \
	--data-binary "@${FILE_PATH}" \
	--output "./plot_response.png" \
	"https://api.cardio.ai/v1/plot"
