From jenkins/jnlp-agent-alpine:latest

USER root

RUN set -ex \
&& apk --no-cache update \
&& apk --no-cache upgrade --available \
&& apk --no-cache add docker curl

ENTRYPOINT ["jenkins-slave"]
