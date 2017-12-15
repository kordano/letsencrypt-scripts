#!/bin/bash
docker run -it --rm \
       -v company_certs:/etc/letsencrypt \
       -v company_certs-data:/data/letsencrypt \
       deliverous/certbot \
       certonly \
       --webroot --webroot-path=/data/letsencrypt \
       -d company.com -d api.company.com -d www.company.com
