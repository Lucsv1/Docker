# FROM ubuntu

# RUN apt-get -y update
# RUN apt-get -y install python3
# RUN touch arquivo_de_boas_vindas.txt


# FROM ubuntu:18.04
# WORKDIR /app-java
# ADD arquivo-host.json arquivo-host-transferido.json

# FROM alpine
# CMD ["echo", "Rodei na execução"]

FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]


