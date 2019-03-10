#!/bin/sh

rm -rfv /var/lib/ssl_db/
/usr/lib/squid/security_file_certgen -c -s /var/cache/squid/ssl_db -M 4MB
chown -R squid:squid /var/cache/squid/ssl_db

if [ ! -f /cert.pem ]; then
    openssl req -new -newkey rsa:2048 -sha256 -days 3650 -nodes -x509 \
        -extensions v3_ca -keyout /ca-key.pem \
        -out /ca-key.pem \
        -subj "/CN=Sneaky Squid" -utf8 -nameopt multiline,utf8

    openssl x509 -in /ca-key.pem \
        -outform PEM -out /ca-cert.pem
else
    echo "Certificate found."
fi

sleep 5
/usr/sbin/squid -f /etc/squid/squid.conf -NYCd 1