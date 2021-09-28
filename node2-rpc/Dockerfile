FROM ubuntu:21.04

RUN apt-get update -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update -y
RUN apt-get install -y ethereum

COPY node2 node2
COPY genesis genesis

RUN geth init --datadir node2 genesis/arcada_iot.json

CMD geth \
    --datadir node2 \
    --networkid 5767 \
    --syncmode full \
    --nodiscover \
    --maxpeers 1 \
    --http \
    --http.port 8545 \
    --http.api personal,eth,net,web3 \