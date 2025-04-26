#!/bin/bash

docker run \
    --network host \
    --gpus=all \
    -v $(pwd)/args.json:/app/args.json \
    -v ~/.cache/huggingface/hub/models--meetkai--functionary-small-v3.2/:/root/.cache/huggingface/hub/models--meetkai--functionary-small-v3.2/ \
    dynamo-multi-node:latest run in=http out=mistralrs meetkai/functionary-small-v3.2 --extra-engine-args=/app/args.json