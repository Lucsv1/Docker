FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install python3
RUN touch arquivo_de_boas_vindas.txt