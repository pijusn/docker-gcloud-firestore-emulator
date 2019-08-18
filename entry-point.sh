#!/usr/bin/env bash

# Check user environment variable
if [[ -z "${GOOGLE_CLOUD_PROJECT}" ]]; then
  echo "Missing GOOGLE_CLOUD_PROJECT environment variable" >&2
  exit 1
fi

gcloud config set project ${GOOGLE_CLOUD_PROJECT}

gcloud beta emulators firestore start --host-port=0.0.0.0:8080
