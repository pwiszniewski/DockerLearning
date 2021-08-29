FROM ubuntu

WORKDIR /katalog
CMD ls -al && echo "test" > file.txt && ls -al
