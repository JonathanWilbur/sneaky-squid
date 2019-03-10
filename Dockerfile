FROM alpine
RUN apk update
RUN apk add squid
RUN apk add openssl
COPY ./source/squid.conf /etc/squid/squid.conf
COPY ./source/blocklists /etc/squid/blocklists
COPY ./source/openssl.cnf.add /etc/ssl
COPY ./source/start.sh /start.sh
RUN mkdir -p /var/cache/squid/
RUN chown -R squid:squid /var/cache/squid/
RUN cat /etc/ssl/openssl.cnf.add >> /etc/ssl/openssl.cnf
RUN chmod +x /start.sh
EXPOSE 3128:3128/tcp
EXPOSE 4128:4128/tcp
CMD [ "/start.sh" ]