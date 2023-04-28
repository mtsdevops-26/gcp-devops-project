FROM python:3.8_slim_buster

WORKDIR /app

COPY requeriments.txt

RUN pip3 install -r requeriments.txt

COPY . . 

CMD ("python3","-m", "flask", "run", "-host:0.0.0.0" )