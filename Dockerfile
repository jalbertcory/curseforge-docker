FROM dorowu/ubuntu-desktop-lxde-vnc

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN apt update
RUN apt install -y --no-install-recommends unzip fuse dos2unix

# force the update
RUN echo 3

ADD https://curseforge.overwolf.com/downloads/curseforge-latest-linux.zip /tmp/curseforge.zip

RUN unzip /tmp/curseforge.zip -d /curseforge

WORKDIR /curseforge/build

RUN chmod a+x CurseForge*AppImage

COPY run_curseforge.sh /root/Desktop/run_curseforge.sh

RUN dos2unix /root/Desktop/run_curseforge.sh
RUN chmod a+x /root/Desktop/run_curseforge.sh

ENTRYPOINT ["/startup.sh"]
