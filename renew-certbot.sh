#!/bin/bash
docker run -t --rm -v company_certs:/etc/letsencrypt -v company_certs-data:/data/letsencrypt -v /var/log/letsencrypt:/var/log/letsencrypt deliverous/certbot renew --webroot --webroot-path=/data/letsencrypt && docker kill -s HUP nginx >/dev/null 2>&1
