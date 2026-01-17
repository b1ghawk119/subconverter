mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
tcp-concurrent: true
global-client-fingerprint: chrome
ipv6: false
external-controller: '127.0.0.1:9090'
secret: b1ghawk119
hosts:
  dns.google:
    - 8.8.8.8
    - 8.8.4.4
    - '2001:4860:4860::8888'
    - '2001:4860:4860::8844'
  doh.pub:
    - 1.12.12.12
    - 1.12.12.21
    - 120.53.53.53
  dns.alidns.com:
    - 223.5.5.5
    - 223.6.6.6
    - '2400:3200::1'
    - '2400:3200:baba::1'
tun:
  enable: true
  stack: mixed
  dns-hijack:
    - 'any:53'
    - 'tcp://any:53'
  auto-route: true
  auto-detect-interface: true
  strict-route: true
  mtu: 1280
  disable-icmp-forwarding: true
  route-exclude-address:
    - 10.0.0.0/8
    - 172.16.0.0/12
    - 192.168.0.0/16
    - 169.254.0.0/16
    - 127.0.0.0/8
    - "::1/128"
    - "fe80::/10"
    - "fc00::/7"
clash-for-android:
  append-system-dns: false
profile:
  tracing: false
  store-selected: true
  store-fake-ip: true
sniffer:
  enable: true
  override-destination: false
  force-dns-mapping: true
  parse-pure-ip: true
  sniff:
    TLS:
      ports:
        - 443
        - 8443
    HTTP:
      ports:
        - 80
        - 8080-8880
    QUIC:
      ports:
        - 443
        - 8443
  skip-domain:
    - Mijia Cloud
    - +.push.apple.com
experimental:
  sniff-tls-sni: true
dns:
  enable: true
  ipv6: false
  prefer-h3: false
  listen: '127.0.0.1:8853'
  use-hosts: true
  use-system-hosts: true
  respect-rules: true
  cache-algorithm: arc
  enhanced-mode: fake-ip
  fake-ip-filter-mode: blacklist
  fake-ip-range: 198.18.0.1/16
  fake-ip-range6: 'fc00::/18'
  fake-ip-filter:
    - "geosite:connectivity-check"
    - "geosite:private"
    - "geosite:cn"
    - "*.lan"
    - "*.local"
    - "*.localhost"
    - "*.home.arpa"
    - "WORKGROUP"
    - "localhost.ptlogin2.qq.com"

    # NTP / time
    - "time.*.com"
    - "time.*.gov"
    - "time.*.apple.com"
    - "ntp.*.com"
    - "+.pool.ntp.org"

    # Windows 网络检测
    - "+.msftconnecttest.com"
    - "+.msftncsi.com"

    # 游戏 / P2P / STUN 常见问题域名
    - "+.srv.nintendo.net"
    - "*.n.n.srv.nintendo.net"
    - "+.stun.*.*"
    - "+.stun.*.*.*"
    - "+.stun.*.*.*.*"
    - "+.stun.*.*.*.*.*"
    - "+.stun.playstation.net"
    - "xbox.*.*.microsoft.com"
    - "*.*.xboxlive.com"

    # 国内音乐/视频等（按你原配置保留）
    - "+.battlenet.com.cn"
    - "+.music.163.com"
    - "+.y.qq.com"
    - "+.bilivideo.cn"

    # Google Lens（按你原配置保留）
    - "lens.l.google.com"
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
  nameserver:
    - "system"
    - 'https://dns.alidns.com/dns-query'
    - 'https://doh.pub/dns-query'
  fallback:
    - 'https://dns.google/dns-query'
    - 'https://1.1.1.1/dns-query'
  proxy-server-nameserver:
    - 'https://dns.alidns.com/dns-query'
    - 'https://doh.pub/dns-query'
  direct-nameserver:
    - 'https://dns.alidns.com/dns-query'
    - 'https://doh.pub/dns-query'
  nameserver-policy:
    'geosite:cn':
      - 'https://dns.alidns.com/dns-query'
      - 'https://doh.pub/dns-query'
    dl.google.com:
      - 'https://dns.alidns.com/dns-query'
      - 'https://doh.pub/dns-query'
    dl.l.google.com:
      - 'https://dns.alidns.com/dns-query'
      - 'https://doh.pub/dns-query'
    +.in-addr.arpa: 10.0.0.1
    +.ip6.arpa: 10.0.0.1
  fallback-filter:
    geoip: true
    geoip-code: CN
    geosite:
      - gfw
    ipcidr:
      - 0.0.0.0/8
      - 10.0.0.0/8
      - 100.64.0.0/10
      - 127.0.0.0/8
      - 169.254.0.0/16
      - 172.16.0.0/12
      - 192.168.0.0/16
      - 240.0.0.0/4

{% if local.clash.new_field_name == "true" %}
proxies:
  - name: dns-拦截
    type: dns
proxy-groups: ~
rules: ~
{% else %}
Proxy: ~
Proxy Group: ~
Rule:
  - 'DST-PORT,53,dns-拦截'
{% endif %}
