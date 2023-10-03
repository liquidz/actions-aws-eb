FROM python:3.11

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install "pyyaml<5.4" && pip install --upgrade pip awsebcli cryptography==3.3.1

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]