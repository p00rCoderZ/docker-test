FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip vim nano
RUN python3 -m pip install sanic