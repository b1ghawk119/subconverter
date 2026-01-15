mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
tcp-concurrent: true
global-client-fingerprint: chrome
ipv6: true
external-controller: 127.0.0.1:9090
secret: b1ghawk119
tun:
  enable: true
  stack: mixed
  dns-hijack:
    - any:53
    - tcp://any:53
  auto-route: true
  auto-detect-interface: true
  strict-route: true
clash-for-android:
  append-system-dns: false
profile:
  tracing: true
  store-selected: true
  store-fake-ip: true
sniffer:
  enable: true
  override-destination: false
  force-dns-mapping: true
  parse-pure-ip: true
  sniff:
    TLS:
      ports: [443, 8443]
    HTTP:
      ports: [80, 8080-8880]
    QUIC:
      ports: [443, 8443]
  skip-domain:
    - "Mijia Cloud"
    - "+.push.apple.com"
experimental:
  sniff-tls-sni: true
dns:
  enable: true
  prefer-h3: false
  listen: 127.0.0.1:8853
  respect-rules: true
  ipv6: true
  cache-algorithm: arc
  enhanced-mode: fake-ip
  #fake-ip-range: 28.0.0.1/8
  fake-ip-range: 198.18.0.1/16
  fake-ip-range6: fc00::/18
  fake-ip-filter:
    - "*.lan"
    - "*.local"
    - "*.localhost"
    - "*.home.arpa"

    # 时间同步/连通性探测（这些非常建议保留）
    - "time.*.com"
    - "time.*.gov"
    - "time.*.apple.com"
    - "ntp.*.com"
    - "+.pool.ntp.org"
    - "+.msftconnecttest.com"
    - "+.msftncsi.com"

    # 游戏/主机网络（按你需求保留）
    - "+.srv.nintendo.net"
    - "+.stun.playstation.net"
    - "xbox.*.microsoft.com"
    - "+.battlenet.com.cn"

    # 音乐/视频（按你需求保留）
    - "+.music.163.com"
    - "+.y.qq.com"
    - "+.bilivideo.cn"

    # 常见特殊
    - "localhost.ptlogin2.qq.com"
    - "lens.l.google.com"
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
  nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query
  fallback:
    - https://dns.google/dns-query
    - https://1.1.1.1/dns-query
  proxy-server-nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query
  direct-nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query
  nameserver-policy:
    "geosite:cn":
      - https://dns.alidns.com/dns-query
      - https://doh.pub/dns-query
    "dl.google.com": [223.5.5.5, 119.29.29.29]
    "dl.l.google.com": [223.5.5.5, 119.29.29.29]
    "+.in-addr.arpa": 10.0.0.1
    "+.ip6.arpa": 10.0.0.1
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
  - {name: "dns-拦截", type: dns}
proxy-groups: ~
rules: ~
{% else %}
Proxy: ~
Proxy Group: ~
Rule: 
  - DST-PORT,53,dns-拦截
{% endif %}
