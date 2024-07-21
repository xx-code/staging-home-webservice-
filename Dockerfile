FROM windev/webdev-base:290045s

COPY MasterMenuServer.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/MasterMenuServer/rest

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/MasterMenuServer/