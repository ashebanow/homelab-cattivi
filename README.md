Docker compose files for my homelab config.

For each app:
  networks:
    mynetwork:
      ipv4_address: 172.25.0.11

networks:
  mynetwork:
    driver: bridge
    ipam:
      driver: default
      config:
        - subnet: 172.25.0.0/16
          gateway: 172.25.0.1
