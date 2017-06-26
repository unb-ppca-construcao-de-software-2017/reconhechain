FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y wget \
    && cd /tmp \
    && wget http://www.multichain.com/download/multichain-1.0-beta-2.tar.gz \
    && tar -xvzf multichain-1.0-beta-2.tar.gz \
    && cd multichain-1.0-beta-2 \
    && mv multichaind multichain-cli multichain-util /usr/local/bin

CMD multichain-util create reconhecer -'anyone-can-connect'=true -'anyone-can-send'=true -'anyone-can-receive'=true -'anyone-can-issue'=true -'default-rpc-port'=5555] \
    && multichaind reconhecer -daemon -rpcuser='usuario' -rpcpassword='senha' \
    && multichain-cli reconhecer -rpcuser='usuario' -rpcpassword='senha' getnewaddress \
    && multichain-cli reconhecer -rpcuser='usuario' -rpcpassword='senha' listaddresses \
