Notes on rotating logs:

``` shell
# place this example code at /etc/logrotate.d/traefik on your docker host server
# please adjust the custom file path below, where your traefik logs are stored
# please adjust the below traefik container name to send the USR1 signal for log rotation

compress
/mnt/cache/appdata/traefik/logs/*.log {
  size 20M
  daily
  rotate 14
  missingok
  notifempty postrotate
  docker kill --signal="USR1" reverse-proxy
  endscript
}
```