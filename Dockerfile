FROM alpine:3.7

LABEL maintainer="alexcanal@gmail.com"

RUN apk add --no-cache git curl

RUN curl -OL https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh

RUN chmod +x gitflow-installer.sh

RUN sh gitflow-installer.sh

RUN rm -rf gitflow-installer.sh

CMD [ "git-flow" ]
