FROM node:latest
ENV PORT=7860
ENV UUID=d342d11e-d424-4583-b36e-524ab1f0afa4
EXPOSE 7860
RUN npm i -g @3kmfi6hp/nodejs-proxy

RUN apt-get update &&\
    apt-get install -y iproute2 vim &&\
    addgroup --gid 10001 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser 

USER 10001

CMD ["nodejs-proxy"]
