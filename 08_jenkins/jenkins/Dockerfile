FROM jenkins/jenkins:lts-alpine
# if we want to install via apt
USER root
RUN apk update && apk add docker maven
# drop back to the regular jenkins user - good practice
# USER jenkins

# docker build . -t hub.cathay/jenkins:latest; docker push hub.cathay/jenkins:latest