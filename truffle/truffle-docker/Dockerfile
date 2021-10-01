FROM node:16.10.0

RUN npm install -g truffle

RUN truffle obtain --solc=0.7.6

COPY resources resources

WORKDIR /project

CMD /resources/migrate.sh