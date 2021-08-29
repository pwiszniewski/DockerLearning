FROM ubuntu 

COPY test/xyz /moj_katalog/

COPY test /moj_katalog/

COPY test/xyz abcd.txt /moj_katalog/

CMD ls /moj_katalog
