FROM ubuntu:24.04

WORKDIR /dynamo

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq curl python3-dev python3-pip python3-venv libucx0
RUN python3 -m venv venv
RUN . venv/bin/activate && pip install ai-dynamo[all]

# Copy entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
