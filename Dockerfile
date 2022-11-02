FROM ubuntu

WORKDIR /app

COPY /home/runner/work/CI_CD/CI_CD/build/bin/application /app/

CMD ./application