# geth-docker

This repository contains 4 dockerfiles describing containers that together form a simple private ethereum test network.

_Node1_ is a bootnode and used by the other nodes in the network to find each other.

_Node2_ is a miner and theferoe has an associated ethereum account that it keeps unlocked during mining.

_Node3_ is a relatively secure JsonRPC endpoint, accepting bot webcoskt and http connections.  
It does not need a key, as any user connecting to it will manage their own keys.
This container serves as the only way to get external transactions on to the network.

_Node4_ is a special node, that is used only when deplying smart contracts. It contains a key that it uses to sign the deployment transactions.
This should only be running while deploying contracts, and can be started by running `docker-compose up` from inside its directory.

All the other nodes are started at the same time by running `docker-compsoe up` in the main directory.

## Dependencies
Thsi repository depends on docker and docker-compose to be installed.

## Security and keys
You SHOULD generate your own keys and place them inside the docker keystore folder! Default keys are provided in order for this to run without any configuration, but these should not be used in a production environment.
