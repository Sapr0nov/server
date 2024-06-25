FROM linode/lamp

RUN a2enmod ssl
COPY apache2.conf /etc/apache2/apache2.conf
RUN mkdir -p /etc/apache2/conf.d/ && mkdir -p /etc/apache2/conf.d/domains/
COPY note.stacksite.conf /etc/apache2/conf.d/domains/

ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80

CMD ["/run.sh"]
