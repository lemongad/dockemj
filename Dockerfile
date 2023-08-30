FROM lemoc/paas:v7

# 添加用户组
RUN addgroup -g 10001 choreo

# 添加用户，并将其添加到用户组
RUN adduser -D -s /bin/sh -u 10001 -G choreo choreouser

USER 10001
