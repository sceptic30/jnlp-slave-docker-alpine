From jenkins/jnlp-slave:alpine

USER root

RUN set -ex \
&& apk --no-cache add docker \
&& adduser -D -S -G jenkins docker

USER jenkins

ENTRYPOINT ["jenkins-agent"]
