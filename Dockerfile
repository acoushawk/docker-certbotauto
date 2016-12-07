From debian:8


WORKDIR /opt/certbot

RUN apt-get update && apt-get install -y wget
RUN chdir /opt/certbot && wget https://dl.eff.org/certbot-auto
RUN chmod a+x /opt/certbot/certbot-auto

EXPOSE 80

