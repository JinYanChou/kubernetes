FROM jenkins/jenkins:lts-alpine
# if we want to install via apt
USER root
ADD https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod 775 /usr/local/bin/kubectl \
    && apk update && apk add docker maven && apk add tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime \ 
    && echo "Asia/Taipei" > /etc/timezone

# docker build . -t hub.cathay/jenkins:latest; docker push hub.cathay/jenkins:latest