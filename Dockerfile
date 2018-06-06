FROM debian:jessie-slim

LABEL maintainer="alexcanal@gmail.com"

RUN apt-get update && apt-get install -y git git-flow util-linux curl && apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash

RUN apt-get update && apt-get install -y nodejs && apt-get clean

CMD [ "git-flow" ]
