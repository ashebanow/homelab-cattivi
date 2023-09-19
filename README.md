Docker compose files for my homelab config.

For each app:
  networks:
    proxy_network:
      ipv4_address: 10.60.0.xxx

  networks:
    proxy_network:
      name: proxy_network
      driver: bridge
      ipam:
        driver: default
        config:
          - subnet: 10.60.0.0/24
            gateway: 10.60.0.1
