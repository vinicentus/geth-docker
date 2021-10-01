FROM ethereum/client-go:alltools-stable

COPY node4 node4

RUN geth init --datadir node4 node4/genesis/arcada_iot.json

CMD geth \
    --bootnodes enode://cc70ee5a8878c7536db7ce69f75b1588d4f43d43eb96811140525cba9aa1a14a98b0390f1b1f98d5de7f5b157694fd1beb0778dbbae3749c4b057023c5497f3b@node1-bootnode:0?discport=30301 \
    --datadir node4 \
    --networkid 11865 \
    --syncmode full \
    --maxpeers 3 \
    --password node4/keystore/password.txt \
    --unlock 1e0dddfa3ad438a204ea08864f85bfb7615a83a3 \
    --allow-insecure-unlock \
    --http \ 
    --http.addr 0.0.0.0 \
    --http.port 8550 \
    --http.api eth,net,web3 \
    # needed for metamask
    --http.corsdomain '*' \