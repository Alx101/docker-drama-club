FROM ubuntu:20.04

RUN apt-get update && apt-get install curl -y 

RUN curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
RUN chmod +x /tmp/nodesource_setup.sh
RUN sh /tmp/nodesource_setup.sh

RUN apt-get install nodejs -y

COPY ourcode ./app/src
WORKDIR ./app/src


RUN npm install

CMD npm run start
