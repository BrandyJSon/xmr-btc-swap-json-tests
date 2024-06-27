#!/bin/bash

./swap --testnet -j buy-xmr --seller $P2P_ADDRESS/$P2PID --change-address $BOB_CHANGE --receive-address $BOB_RECEIVE --electrum-rpc tcp://127.0.0.1:50001 --bitcoin-target-block 7 --tor-socks5-port 9050 --monero-daemon-address $MONERO_DAEMON 

