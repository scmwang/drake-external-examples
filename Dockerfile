FROM robotlocomotion/drake:focal-1.22.0
WORKDIR /root
COPY ./scripts/setup/linux/ubuntu/focal/install_prereqs .
RUN apt-get update \
    && ./install_prereqs \
    && rm -rf /var/lib/apt/lists/*
