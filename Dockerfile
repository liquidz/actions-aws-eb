FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip install --upgrade pip awsebcli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]