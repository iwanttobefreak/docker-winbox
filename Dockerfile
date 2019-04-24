FROM debian

LABEL maintainer="jose@legido.com"

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install --yes --no-install-recommends wine32 wine wget ca-certificates \
    && wget https://download.mikrotik.com/routeros/winbox/3.18/winbox.exe \
    && apt-get clean \
    && rm -rf /var/cache/* \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /winbox && \
    mv /winbox.exe /winbox

CMD chown -R $USER. /winbox && su - $USER -c "export WINEPREFIX=/winbox/;wine /winbox/winbox.exe"
