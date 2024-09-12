port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: false
mode: rule
log-level: info
ipv6: false
external-controller: 0.0.0.0:9090
sniffer:
  enable: true
  force: false
  sniffing:
    - tls
  port-whitelist:
    - 23-23333
  skip-sni:
    - '+.nameless13.com'
dns:
  enable: true
  listen: 127.0.0.1:8853
  default-nameserver:
    - 223.5.5.5
    - 8.8.4.4
  ipv6: false
  enhanced-mode: fake-ip
  nameserver:
    - 114.114.114.114
    - tls://223.5.5.5:853
    - tls://1.12.12.12
{% if local.clash.new_field_name == "true" %}
proxies: ~
proxy-groups: ~
rules:
  - DST-PORT,443,REJECT,udp
{% else %}
Proxy: ~
Proxy Group: ~
Rule: ~
{% endif %}
