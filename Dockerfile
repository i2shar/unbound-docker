FROM debian:bullseye-slim

RUN apt update && \
    apt -y install unbound vim dnsutils lsof procps curl net-tools && \
    apt -y clean

RUN mkdir --mode 755 /var/log/unbound && \
    touch /var/log/unbound/unbound.log && \
    chown unbound:unbound /var/log/unbound /var/log/unbound/unbound.log

COPY entrypoint.sh /

EXPOSE 5335/udp 5335/tcp

ENTRYPOINT ["/entrypoint.sh"]





