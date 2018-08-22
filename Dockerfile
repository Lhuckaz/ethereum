FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/local/src/

COPY . .

RUN apt-get update \
    && apt-get install -y software-properties-common apt-utils --no-install-recommends \
    && add-apt-repository -y ppa:ethereum/ethereum \
    && apt-get install -y --no-install-recommends -y \
    nodejs \
    ethereum \
    solc \
    && mkdir ethereum \
    && cd ethereum \
    && geth --datadir /usr/local/src/ethereum/ init /usr/local/src/genesis.json

EXPOSE 8545/tcp

ENTRYPOINT [ "geth", "--identity", "BlockchainX", "--datadir", "/usr/local/src/ethereum/", "--rpc", "--rpcapi", "db,eth,net,web3,personal", "--rpcaddr", "0.0.0.0", "--rpcport", "8545", "--rpccorsdomain", "*", "--ipcpath", "/usr/local/src/.ethereum/geth.ipc", "--networkid", "777" ]
