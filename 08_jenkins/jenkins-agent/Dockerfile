FROM jenkins/jnlp-agent-alpine:latest
# if we want to install via apt
USER root
RUN apk update && apk add docker maven && apk add tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime \ 
    && echo "Asia/Taipei" > /etc/timezone

# docker build . -t hub.cathay/jenkins-agent:latest; docker push hub.cathay/jenkins-agent:latest
