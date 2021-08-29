FROM ubuntu 

RUN mkdir /test
RUN touch /test/file.txt

CMD ["/test"]
ENTRYPOINT ["ls", "-al"]
