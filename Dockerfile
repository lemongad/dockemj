FROM lemoc/paas:v7

RUN addgroup -g 1000 node && adduser -u 1000 -G node -s /bin/sh -D node

USER node
