FROM python:3.10

ENV VERSION 4.2.176

ENV CUSTOMARGS="cyberdrop-dl"

ENV APP_DIR="/app"

RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    python3 -m pip install --no-cache-dir cyberdrop-dl==${VERSION}

WORKDIR ${APP_DIR}

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
