FROM debian:jessie

COPY run.sh /run.sh
COPY teeworlds_basket_srv /usr/games/teeworlds_basket_srv
RUN chmod +x /usr/games/teeworlds_basket_srv

COPY ctf.cfg /ctf.cfg

RUN chmod +x /run.sh

EXPOSE 8303/udp
CMD ["/run.sh"]
