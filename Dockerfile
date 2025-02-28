FROM ubuntu:latest
LABEL authors="tushar"


RUN apt update -y
RUN apt install python3 python3-pip pipenv -y

WORKDIR /app
COPY . /app/
RUN pipenv install -r requirements.txt

EXPOSE 8088

# CMD pipenv run uvicorn main:app --host 0.0.0.0 --port 80
CMD pipenv run python3 ./main.py
