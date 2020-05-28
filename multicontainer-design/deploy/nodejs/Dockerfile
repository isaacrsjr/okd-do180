FROM	s5c7tg1/nodejs
ARG NEXUS_BASE_URL
MAINTAINER Isaac Roque Sartori Junior <isaac.sartori@universo.univates.br>

ENV     HOME=/opt/app-root/src

COPY run.sh build ${HOME}/
EXPOSE	30080

CMD	["bash","./run.sh"]
