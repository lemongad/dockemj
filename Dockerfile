FROM lemoc/paas:v7

# 添加用户组
RUN addgroup -g 10001 choreo

# 添加用户，并将其添加到用户组和sudo组
RUN adduser -D -s /bin/sh -u 10001 -G choreo choreouser \
    && addgroup choreouser sudo

# 安装sudo
RUN apk add --no-cache sudo

# 切换到新用户
USER 10001
