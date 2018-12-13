FROM land007/node:latest
MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN . $HOME/.nvm/nvm.sh && cd /root/.nvm/versions/node/$SHIPPABLE_NODE_VERSION/lib/ && npm install grpc @grpc/proto-loader

#docker stop node-grpc ; docker rm node-grpc ; docker run -it --restart always --privileged -v ~/docker/node:/node -p 80:80 --name node-grpc land007/node-grpc:latest
