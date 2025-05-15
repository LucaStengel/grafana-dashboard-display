# Verwende ein leichtgewichtiges Basis-Image für ARMv7
FROM arm32v7/debian:bullseye-slim

# Installiere benötigte Pakete
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    xserver-xorg \
    lxde \
    chromium \
    unclutter \
    libnss3 \
    libxss1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libx11-xcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libatk1.0-0 \
    libcups2 \
    libdrm2 \
    libxkbcommon0 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Erstelle ein Verzeichnis für die Konfiguration
RUN mkdir -p /config

# Setze das Arbeitsverzeichnis
WORKDIR /config

# Kopiere die Konfigurationsdatei in das Image
COPY config.yaml /config/config.yaml

# Lade die passende grafana-kiosk Binärdatei herunter
RUN wget https://github.com/grafana/grafana-kiosk/releases/download/v1.0.6/grafana-kiosk.linux.armv7 \
    && chmod +x grafana-kiosk.linux.armv7 \
    && mv grafana-kiosk.linux.armv7 /usr/local/bin/grafana-kiosk

# Setze den Startbefehl
CMD ["grafana-kiosk", "-c", "/config/config.yaml"]
