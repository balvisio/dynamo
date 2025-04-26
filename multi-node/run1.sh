#!/bin/bash

docker run \
    --network host \
    --gpus=all \
    -v ~/.cache/huggingface/hub/models--meetkai--functionary-small-v3.2/:/root/.cache/huggingface/hub/models--meetkai--functionary-small-v3.2/ \
    dynamo-multi-node:latest run in=http out=dyn://llama3B_pool