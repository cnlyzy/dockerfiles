FROM alpine
COPY ./frps /frp/frps
WORKDIR /frp
RUN chmod +x frps
ENTRYPOINT ./frps -c ./conf/frps.ini
