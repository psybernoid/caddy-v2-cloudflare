FROM caddy:builder AS builder

RUN caddy-build \
    github.com/caddy-dns/cloudflare
    github.com/greenpau/caddy-auth-portal
    github.com/porech/caddy-maxmind-geolocation

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
