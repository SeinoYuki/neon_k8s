ARG REPOSITORY=369495373322.dkr.ecr.eu-central-1.amazonaws.com
ARG COMPUTE_IMAGE=compute-node-v15
ARG TAG=3000

FROM neondatabase/${COMPUTE_IMAGE}:$TAG

USER root
RUN apt-get update &&       \
    apt-get install -y curl \
                       jq   \
                       netcat\
                       git  \
                       make \
                       gcc

COPY var/db/postgres/specs/spec.json /var/db/postgres/specs/spec.json
COPY shell/compute.sh /shell/compute.sh

USER postgres
