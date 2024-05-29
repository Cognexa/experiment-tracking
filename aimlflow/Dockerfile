FROM python:3.10-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install aim-mlflow

WORKDIR /app

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
