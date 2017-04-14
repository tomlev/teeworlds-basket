FROM debian:jessie
MAINTAINER Alejandro Lazaro <virtualroot@gmail.com>

ENV GAME_TYPE ctf

COPY run.sh /run.sh
COPY teeworlds_basket_srv /usr/bin/teeworlds_basket_srv
RUN chmod +x /usr/bin/teeworlds_basket_srv

COPY ctf.cfg /ctf.cfg

RUN chmod +x /run.sh

EXPOSE 8303/udp
CMD ["/run.sh"]
