#!/bin/bash

docker run \
    --network host \
    --gpus=all \
    -v $(pwd)/args.json:/app/args.json \
    -v ~/.cache/huggingface/hub/models--meetkai--functionary-small-v3.2/:/root/.cache/huggingface/hub/models--meetkai--functionary-small-v3.2/ \
    -e NATS_SERVER=nats://10.117.2.118 \
    -e ETCD_ENDPOINTS=http://10.117.2.118:2379 \
    dynamo-multi-node:latest run in=dyn://llama3B_pool out=mistralrs meetkai/functionary-small-v3.2 --extra-engine-args=/app/args.json