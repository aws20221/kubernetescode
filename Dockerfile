# syntax=docker/dockerfile:1
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3.8


WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
