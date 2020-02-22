FROM ubuntu:trusty
ENV NO_PROXY .svc.cluster.local,.service.consul
ARG URL_TO_CURL
#RUN apk add --update curl && rm -rf /var/cache/apk/*
RUN apt-get update && apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists
ARG VAULT_SERVER_URL
RUN apt-get update && apt-get install -y curl jq && apt-get clean && rm -rf /var/lib/apt/lists
COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
