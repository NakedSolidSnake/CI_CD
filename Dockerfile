FROM ubuntu

WORKDIR /app

COPY ./cicd /app/

RUN chmod +x cicd

CMD ./cicd