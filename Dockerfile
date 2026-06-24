# This Dockerfile is used in the CI,
# it is a minimal Ubuntu image containing
# the saw-suite binary package, make and rustc/cargo
FROM ubuntu:24.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        zip \
        ca-certificates \
        make \
        git && \
    rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN . "$HOME/.cargo/env" && rustup install stable

COPY dist/saw-suite/ /opt/saw-suite
ENV CRUX_RUST_LIBRARY_PATH=/opt/saw-suite/rlibs
ENV SAW_RUST_LIBRARY_PATH=/opt/saw-suite/rlibs
ENV PATH=/opt/saw-suite/bin:$PATH
