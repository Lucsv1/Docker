FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install python3
RUN touch arquivo_de_boas_vindas.txt


FROM ubuntu:18.04
WORKDIR /app-java
ADD arquivo-host.json arquivo-host-transferido.json

FROM alpine
CMD ["echo", "Rodei na execução"]