FROM ubuntu:21.04

RUN apt-get update -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update -y
RUN apt-get install -y ethereum

COPY node1 node1
COPY genesis genesis
COPY keystore keystore

RUN geth init --datadir node1 genesis/arcada_iot.json

CMD geth \
    --datadir node1 \
    --networkid 5767 \
    --syncmode full \
    --nodiscover \
    --maxpeers 1 \
    --password keystore/password.txt \
    --unlock 0903890340de53dad6bfeea0d098178fc3300f45 \
    --mine
