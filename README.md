sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum solc -y
# Install Mist-linu64-0-11-1.deb
mkdir ethereum
cd ethereum

# Iniciando a base de dados do Blockchain Ethereum
geth --datadir ~/ethereum/ init ~/ethereum/genesis.json - Inicializar nova base

# Iniciando o NO com  o MIST configurado para a rede privada
geth --identity "BlockchainX" --datadir ~/ethereum/  --rpc --rpcapi "db,eth,net,web3" --rpcport "8545" --rpccorsdomain "*"  --ipcpath  ~/.ethereum/geth.ipc --networkid 777