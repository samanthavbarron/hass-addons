#!/bin/sh
set -e

export PATH="/app/.venv/bin:${PATH}"

OPTIONS_FILE="/data/options.json"

export OPENAI_API_KEY
OPENAI_API_KEY=$(python3 -c "import json; print(json.load(open('${OPTIONS_FILE}'))['openai_api_key'])")

export OPENAI_MODEL
OPENAI_MODEL=$(python3 -c "import json; print(json.load(open('${OPTIONS_FILE}'))['openai_model'])")

PODCAST_DIR=$(python3 -c "import json; print(json.load(open('${OPTIONS_FILE}'))['podcast_directory'])")

exec ad-begone --directory="${PODCAST_DIR}"
