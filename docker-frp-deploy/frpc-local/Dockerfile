FROM alpine
COPY ./frpc /frp/frpc
WORKDIR /frp
RUN chmod +x frpc
ENTRYPOINT ./frpc -c ./conf/frpc.ini
