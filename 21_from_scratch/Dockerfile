FROM gcc:10.1 AS builder

WORKDIR /app

COPY main.c /app/


RUN gcc -o myapp -static main.c

FROM scratch
COPY --from=builder /app/myapp /myapp

ENTRYPOINT ["/myapp"]
