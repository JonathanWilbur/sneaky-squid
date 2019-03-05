FROM alpine
RUN apk update
RUN apk add squid
COPY ./source/squid.conf /etc/squid/squid.conf
COPY ./source/application_domains.txt /etc/squid/application_domains.txt
COPY ./source/surveillant_domains.txt /etc/squid/surveillant_domains.txt
COPY ./source/analytics_js.txt /etc/squid/analytics_js.txt
EXPOSE 3128:3128
CMD [ "/usr/sbin/squid", "-f", "/etc/squid/squid.conf", "-NYCd", "1" ]
# ENTRYPOINT [ "/bin/sh" ]