FROM python:3.10

ENV VERSION 3.4.19

ENV CUSTOMARGS="cyberdrop-dl"

ENV APP_DIR="/app" PUID="99" PGID="100" UMASK="022"

RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir cyberdrop-dl==${VERSION}

WORKDIR ${APP_DIR}

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]