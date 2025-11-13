# This Dockerfile is used in the CI,
# it is a minimal Ubuntu image containing
# the saw-suite binary package
FROM ubuntu:24.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        zip \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*
COPY dist/saw-suite/ /opt/saw-suite
ENV CRUX_RUST_LIBRARY_PATH=/opt/saw-suite/rlibs
ENV SAW_RUST_LIBRARY_PATH=/opt/saw-suite/rlibs
ENV PATH=/opt/saw-suite/bin:$PATH
