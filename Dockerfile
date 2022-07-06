FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt apt -qq update && apt -qq install -y git ffmpeg

COPY . /app

#set a default command

CMD python3 bot.py
