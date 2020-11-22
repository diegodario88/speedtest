FROM node:15.2-alpine
WORKDIR /app
RUN apk add --no-cache jq coreutils && \
    npm i -g speed-test
COPY run.sh .
CMD /app/run.sh