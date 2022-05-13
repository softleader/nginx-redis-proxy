FROM bitnami/nginx
USER root
## Install module
RUN apt-get update\
	&& apt-get install libnginx-mod-stream -y\
	&& rm -rf /var/lib/apt/lists/*
## Adding custom configs
RUN echo "include  \"/tmp/*.conf\";" >> /opt/bitnami/nginx/conf/nginx.conf
USER 1001
