#!/bin/bash

docker-compose up -d

cd ~/electrumx
DB_DIRECTORY=../electrumx/datadir DAEMON_URL=http://demo:demo@127.0.0.1:5000 COIN=Bitcoin NET=regtest SERVICES=tcp://:50001 ../electrumx/electrumx_server

cd ~/
#docker exec -it bitcoind /bin/bash

