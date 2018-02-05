FROM node:0.10.38
MAINTAINER Nathan LeClaire <nathan@docker.com>

ADD . /app
# ADD https://github.com/GaryDoooo/emoji_game/archive/master.zip /game
# RUN mkdir /game
WORKDIR / 
RUN git clone https://github.com/GaryDoooo/emoji_game.git 
# RUN mv /emoji_game/* .
WORKDIR /app
RUN ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
RUN npm install
RUN apt-get update
RUN apt-get install -y python3 python3-pip figlet libcurl4-openssl-dev 
RUN pip3 install -r /emoji_game/requirements.txt
RUN useradd -d /home/term -m -s /bin/bash term
RUN echo 'term:term' | chpasswd
# WORKDIR / 
# RUN chown -R term:term /emoji_game/vending_accounts
WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["node"]
CMD ["app.js", "-p", "3000"]
# CMD ["/usr/bin/sudo", "-u", "term",  "app.js", "-p", "3000"]
