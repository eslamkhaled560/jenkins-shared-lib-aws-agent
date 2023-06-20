FROM python:3.7-slim

WORKDIR /app

ADD . /app

EXPOSE 80

CMD ["python", "app.py"]