#FROM debian:10-slim
FROM apline

WORKDIR app
RUN apt-get update \
  && apt-get install postgresql-dev vim \
  && cd /etc/postgres/ \
  && apply-patch \
  && echo "test" >> text.txt \
  && do-sth text.txt \
  && rm text.txt



RUN pip install Django gunicorn psycopg2

COPY mysite .

CMD gunicorn --bind=0.0.0.0:8080 mysite.wsgi
