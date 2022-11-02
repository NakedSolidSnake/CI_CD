FROM ubuntu

WORKDIR /app

COPY /build/bin/* /app/

CMD ./cicd