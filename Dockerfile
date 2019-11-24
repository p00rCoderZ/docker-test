FROM python:3

WORKDIR /usr/api/src

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update
RUN apt-get install -y vim nano tmux postgresql-client