FROM ubuntu:21.04

RUN apt-get update -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update -y
RUN apt-get install -y ethereum

COPY node3 node3

RUN geth init --datadir node3 node3/genesis/arcada_iot.json

EXPOSE 8545/tcp
EXPOSE 8546/tcp

CMD geth \
    --bootnodes enode://cc70ee5a8878c7536db7ce69f75b1588d4f43d43eb96811140525cba9aa1a14a98b0390f1b1f98d5de7f5b157694fd1beb0778dbbae3749c4b057023c5497f3b@node1-bootnode:0?discport=30301 \
    --datadir node3 \
    --networkid 5767 \
    --syncmode full \
    --maxpeers 2 \
    --http \ 
    --http.addr 0.0.0.0 \
    --http.port 8545 \
    --http.api eth,net,web3 \
    # needed for metamask
    --http.corsdomain '*' \
    --ws \
    --ws.addr 0.0.0.0 \
    --ws.port 8546 \
    --ws.api eth,net,web3 \
    # same as http.corsdomain
    --ws.origins '*'