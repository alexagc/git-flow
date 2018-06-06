FROM debian:jessie-slim

LABEL maintainer="alexcanal@gmail.com"

RUN apt-get update && apt-get install -y git git-flow util-linux && apt-get clean

CMD [ "git-flow" ]
