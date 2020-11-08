FROM debian:stable
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# Pre-reqs
RUN apt update && \
    apt install --no-install-recommends -y python3-paho-mqtt && \
    rm -rf /var/lib/apt/lists/*

# Copy files into place
COPY mqtt_triggers /

# Set the entrypoint
ENTRYPOINT ["/mqtt_triggers"]
