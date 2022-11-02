FROM ubuntu

WORKDIR /app

COPY ./cicd /app/

CMD ./cicd