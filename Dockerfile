FROM lemoc/paas:v7

RUN addgroup -g 10016 node && adduser -u 10016 -G node -s /bin/sh -D node

USER node
