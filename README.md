My terraform-based homelab config.

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

Github home: https://github.com/ashebanow/homelab-cattivi.git
