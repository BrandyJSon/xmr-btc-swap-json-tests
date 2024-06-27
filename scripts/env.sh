#!/bin/bash

#--seller $P2P_ADDRESS/$P2PID --change-address $BOB_CHANGE --receive-address $BOB_RECEIVE --electrum-rpc tcp://127.0.0.1:50001 --bitcoin-target-block 7 --tor-socks5-port 9050 --monero-daemon-address $MONERO_DAEMON 

export P2P_ADDRESS="/ip4/0.0.0.0/tcp/9939"
export P2PID="p2p/PEER_ID"
export BOB_CHANGE="btc_Address_bob"
export BOB_RECEIVE="xmr_Address_bob"
export MONERO_DAEMON="monero-wallet-rpc_address"
