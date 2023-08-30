FROM lemoc/paas:v7

# 添加用户组
RUN addgroup -g 10001 choreo

# 添加用户，并将其添加到用户组
RUN adduser -D -s /bin/sh -u 10001 -G choreo choreouser

# 安装sudo软件包
RUN apk add --no-cache sudo

# 添加sudo组并将用户添加到sudo组
RUN addgroup choreouser sudo

# 切换到新用户
USER 10001
