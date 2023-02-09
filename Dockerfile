FROM debian:latest

RUN apt update && apt install -y default-jre 

RUN apt install curl -y

RUN curl -k -LO https://dl.k8s.io/release/v1.26.1/bin/linux/amd64/kubectl

RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

RUN apt-get update && apt-get install -y procps

RUN rm -rf /var/lib/apt/lists/*