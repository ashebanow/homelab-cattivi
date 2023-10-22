# syntax = docker/dockerfile:latest

# Install dependencies only when needed
FROM ghcr.io/gethomepage/homepage:latest AS deps

WORKDIR /app

COPY --link config ./app/config

SHELL ["/bin/ash", "-xeo", "pipefail", "-c"]
