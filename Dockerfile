FROM ubuntu

RUN apt-get update && \
    apt-get install -y default-jdk
    apt-get update && apt-get install -y docker-ce
