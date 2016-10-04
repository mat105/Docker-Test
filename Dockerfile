FROM ubuntu:16.04

Maintainer MAtias

RUN apt-get update

RUN apt-get install -y tar build-essential

RUN apt-get install -y python python-dev python-distribute python-pip

ADD /aplicacion /aplicacion

RUN pip install -r /aplicacion/requirements.txt

EXPOSE 5000

WORKDIR /aplicacion

CMD python app.py
