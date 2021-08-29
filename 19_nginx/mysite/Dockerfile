FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY mysite .

CMD gunicorn --bind=0.0.0.0:8080 mysite.wsgi
