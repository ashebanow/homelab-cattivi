FROM caddy:2.7-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.7

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
