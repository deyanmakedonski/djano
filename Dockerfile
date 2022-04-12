# syntax=docker/dockerfile:1
FROM python:3

#maintainer
LABEL Author="Deyan Makedonski"

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY ./app /app

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt