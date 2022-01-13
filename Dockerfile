FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install -y expect hostname vim net-tools nmap openssh-server openssh-client rsync xdg-utils
RUN apt autoremove -y && rm -rf /var/lib/apt/lists/* > /dev/null 2>&1

WORKDIR /AirPlonk

COPY . /usr/bin
COPY doc/airplonk.1 /usr/share/man/man1

EXPOSE 22
EXPOSE 8022

RUN service ssh start

CMD /bin/bash airplonk
