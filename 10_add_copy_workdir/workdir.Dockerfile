FROM ubuntu

WORKDIR /app

COPY abcd.txt .

CMD pwd && ls
