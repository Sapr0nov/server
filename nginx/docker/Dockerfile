FROM nginx:1.24

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d/ /etc/nginx/conf.d/
COPY ./html/ /usr/share/nginx/html/

RUN mkdir -p /etc/nginx/conf.d/certbot
RUN mkdir -p /etc/pki && mkdir -p /etc/pki/nginx

#COPY ./dhparam.pem /etc/pki/nginx/dhparam.pem
RUN cd /etc/pki/nginx/ && openssl dhparam -out /etc/pki/nginx/dhparam.pem 4096

ENTRYPOINT ["nginx", "-g", "daemon off;"]