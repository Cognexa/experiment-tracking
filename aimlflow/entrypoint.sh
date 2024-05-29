#!/bin/bash

mkdir -p "$AIM_REPO_PATH"

if [ "$1" == "watcher" ]; then
  aimlflow sync --mlflow-tracking-uri="$MLFLOW_TRACKING_URI" --aim-repo="$AIM_REPO_PATH"
elif [ "$1" == "server" ]; then
  aim init --repo="$AIM_REPO_PATH"
  aim up --repo="$AIM_REPO_PATH" -h "0.0.0.0"
else
  echo "Unsupported command $1"
  exit 1
fi
