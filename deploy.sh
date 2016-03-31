#!/bin/sh

MYPROJECT=$1
if [ -z "$MYPROJECT" ]; then
	echo "Usage: $0 my-project-name"
	exit 1
fi

gcloud deployment-manager deployments create "$MYPROJECT" --config config.yaml
