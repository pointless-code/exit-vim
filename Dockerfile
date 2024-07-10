FROM debian:latest

RUN apt-get update && apt-get install -y vim

COPY . /root

WORKDIR /root

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
