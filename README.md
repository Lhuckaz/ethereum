```sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum solc -y``

## Install Mist-linu64-0-11-1.deb
mkdir ethereum
cd ethereum

## Iniciando a base de dados do Blockchain Ethereum
geth --datadir ~/ethereum/ init ~/ethereum/genesis.json - Inicializar nova base

## Iniciando o NO com  o MIST configurado para a rede privada
geth --identity "BlockchainX" --datadir ~/ethereum/  --rpc --rpcapi "db,eth,net,web3" --rpcport "8545" --rpccorsdomain "*"  --ipcpath  ~/.ethereum/geth.ipc --networkid 777

## Conectando o cliente do Geth

geth attach ipc:///home/ubuntu/.ethereum/geth.ipc 

### CRIANDO CONTA DENTRO DO NO Ethereum

personal.newAccount()
personal
eth.coinbase

### CONECTANDO AOS OUTROS NOS NA REDE

admin.nodeInfo
admin.nodeInfo.enode
admin.addPeer('enode://...')

admin.addPeer('enode://e63333f7b406683cd8a733ff00cfd8c0b81323d34ab1a561a401f6981cd1742bf911de33a8274dcced282473c035cdf035931401bc397d4c97c8b2006e49d500@[172.16.60.122]:30303')


admin.peers
net.peerCount

MINERANDO NA REDE INTERNA

miner.start()  // inicia a mineracao
miner.stop()   // para a mineracao


CHECANDO BALANCE DA SUA CONTA

// eth.coinbase <--- ISTO RETORNA SEU ENDERECO INICIAL QUE FOI CRIADO

eth.getBalance(eth.coinbase)
var balance = eth.getBalance(eth.coinbase)
web3.fromWei(balance, "ether")



web3.fromWei(eth.getBalance("0xb4244efD1b99340d935FAAAf5316d11e4E1921eb"), "ether")

honey move tube credit ozone toilet goat wreck small grocery just dumb

