FROM ubuntu:21.04

RUN apt-get update -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update -y
RUN apt-get install -y ethereum

COPY node1 node1
COPY node2 node2
COPY genesis genesis

RUN geth init --datadir node1 genesis/arcada_iot.json
RUN geth init --datadir node2 genesis/arcada_iot.json