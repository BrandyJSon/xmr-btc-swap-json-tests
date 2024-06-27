#!/bin/bash

docker-compose up -d

mkdir -p ../electrumx-testnet4/datadir

cd ~/electrumx
DB_DIRECTORY=../electrumx-testnet4/datadir DAEMON_URL=http://demo:demo@127.0.0.1:5000 COIN=Bitcoin NET=regtest SERVICES=tcp://:50001 ../electrumx-testnet4/electrumx_server

cd ~/
#docker exec -it bitcoind /bin/bash

