FROM ubuntu:21.04

RUN apt-get update -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update -y
RUN apt-get install -y ethereum

COPY node2 node2

RUN geth init --datadir node2 node2/genesis/arcada_iot.json

CMD geth \
    --bootnodes enode://cc70ee5a8878c7536db7ce69f75b1588d4f43d43eb96811140525cba9aa1a14a98b0390f1b1f98d5de7f5b157694fd1beb0778dbbae3749c4b057023c5497f3b@node1-bootnode:0?discport=30301 \
    --datadir node2 \
    --networkid 5767 \
    --syncmode full \
    --maxpeers 2 \
    --password node2/keystore/password.txt \
    --unlock 0903890340de53dad6bfeea0d098178fc3300f45 \
    --mine