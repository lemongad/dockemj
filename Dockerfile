FROM mjjonone/mjj:amd64
ENV PORT=3000
RUN chmod 777 /app

RUN apt-get update &&\
    apt-get install -y iproute2 vim &&\
    addgroup --gid 10001 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser 

USER 10001
