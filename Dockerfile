# This Dockerfile is used in the CI,
# it is a Debian image with pre-installed rust tools, containing
# the saw-suite binary package, including solvers
FROM rust:1.96

RUN rustup default nightly-2025-09-14

COPY dist/saw-suite/ /opt/saw-suite
ENV CRUX_RUST_LIBRARY_PATH=/opt/saw-suite/rlibs
ENV SAW_RUST_LIBRARY_PATH=/opt/saw-suite/rlibs
ENV PATH=/opt/saw-suite/bin:$PATH
