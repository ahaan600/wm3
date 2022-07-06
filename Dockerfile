FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt
RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

COPY . /app

#set a default command

CMD python3 bot.py
