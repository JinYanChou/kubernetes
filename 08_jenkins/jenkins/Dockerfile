FROM jenkins/jenkins:lts-alpine
# if we want to install via apt
USER root
ADD https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod 775 /usr/local/bin/kubectl \
    && apk update && apk add docker maven && apk add tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime \ 
    && echo "Asia/Taipei" > /etc/timezone \
    && curl -L https://bintray.com/artifact/download/groovy/maven/apache-groovy-binary-2.5.8.zip -o /tmp/groovy.zip \
    && unzip /tmp/groovy.zip -d /usr/local  \
    && rm /tmp/groovy.zip \
    && ln -s /usr/local/groovy-2.5.8 /usr/local/groovy \
    && /usr/local/groovy/bin/groovy -v \
    && ln -s /usr/local/groovy/bin/groovy /usr/local/bin/groovy

# docker build . -t hub.cathay/jenkins:latest; docker push hub.cathay/jenkins:latest