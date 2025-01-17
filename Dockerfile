FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt
ADD . /Eva
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
WORKDIR /EVA

COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
