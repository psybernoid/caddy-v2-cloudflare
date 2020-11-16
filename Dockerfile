FROM caddy:builder:armv7 AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
