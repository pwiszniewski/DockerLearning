FROM ubuntu 

RUN mkdir /test
RUN touch /test/file.txt

CMD ls
#CMD ls /test && grep test
#CMD ['ls', '/test', '']
