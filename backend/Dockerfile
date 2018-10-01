FROM python:3.6

RUN apt-get update && apt-get install -y apt-utils
RUN apt-get install -y \
    curl \
    fish \
    git

RUN mkdir /backend
WORKDIR /backend

ADD requirements.txt /backend/
RUN pip install -r requirements.txt
ADD . /backend/
