FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl libssl3 libsodium23 libpq5 \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/api"]
