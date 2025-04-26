#!/bin/bash

set -e

# Activate virtualenv
source /dynamo/venv/bin/activate

# Execute the command passed to docker run
exec dynamo "$@"