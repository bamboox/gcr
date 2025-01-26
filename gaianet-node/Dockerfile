FROM ubuntu:22.04
# ARG CONFIG_URL=https://raw.githubusercontent.com/GaiaNet-AI/node-configs/main/qwen2-0.5b-instruct/config.json
RUN apt-get update && apt-get install -y curl lsof
RUN curl -sSfL 'https://github.com/GaiaNet-AI/gaianet-node/releases/latest/download/install.sh' | bash
RUN /root/gaianet/bin/gaianet init 
# RUN cd /root/gaianet; curl -LO https://raw.githubusercontent.com/GaiaNet-AI/gaianet-node/main/nodeid.json; cd ~
COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT ./run.sh "$@"
