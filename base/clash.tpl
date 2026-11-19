mixed-port: 7890
allow-lan: false
mode: rule
log-level: info
tcp-concurrent: true
ipv6: false

hosts:
  dns.google:
    - 8.8.8.8
    - 8.8.4.4
    - '2001:4860:4860::8888'
    - '2001:4860:4860::8844'
  doh.pub:
    - 1.12.12.12
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
    - '::1/128'
    - 'fe80::/10'
    - 'fc00::/7'
    # 仅在确实要绕过 TUN 的设备上，把以下地址追加到本地覆写：
    # - 112.49.37.125/32
    # - 117.32.72.4/32

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
      ports: [443, 8443]
    HTTP:
      ports: [80, 8080-8880]
    QUIC:
      ports: [443, 8443]
  skip-domain:
    - Mijia Cloud
    - '+.push.apple.com'

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
    # 让浏览器可以取得 LinuxDO 的真实地址和 HTTPS (TYPE65) 记录。
    - '+.linux.do'
    - 'geosite:connectivity-check'
    - 'geosite:private'
    - 'geosite:cn'
    - '*.lan'
    - '*.local'
    - '*.localhost'
    - '*.home.arpa'
    - 'WORKGROUP'
    - 'localhost.ptlogin2.qq.com'
    # NTP / time
    - 'time.*.com'
    - 'time.*.gov'
    - 'time.*.apple.com'
    - 'ntp.*.com'
    - '+.pool.ntp.org'
    # Windows 网络检测
    - '+.msftconnecttest.com'
    - '+.msftncsi.com'
    # 游戏 / P2P / STUN
    - '+.srv.nintendo.net'
    - '*.n.n.srv.nintendo.net'
    - '+.stun.*.*'
    - '+.stun.*.*.*'
    - '+.stun.*.*.*.*'
    - '+.stun.*.*.*.*.*'
    - '+.stun.playstation.net'
    - 'xbox.*.*.microsoft.com'
    - '*.*.xboxlive.com'
    - '+.battlenet.com.cn'
    - '+.music.163.com'
    - '+.y.qq.com'
    - '+.bilivideo.cn'
    - 'lens.l.google.com'
  # 引导解析 DNS 上游自己的主机名，不是普通域名的默认解析器。
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
  nameserver:
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
  direct-nameserver-follow-policy: true
  nameserver-policy:
    '+.linux.do': 'https://edge.1molchuan.top/linuxdo'
    'geosite:cn':
      - 'https://dns.alidns.com/dns-query'
      - 'https://doh.pub/dns-query'
    dl.google.com:
      - 'https://dns.alidns.com/dns-query'
      - 'https://doh.pub/dns-query'
    dl.l.google.com:
      - 'https://dns.alidns.com/dns-query'
      - 'https://doh.pub/dns-query'
    # 家庭内网域名和反向查询随网络使用系统 DNS，不假设网关总是 10.0.0.1。
    # 若系统 DNS 指回 Mihomo，请在本机把这些条目改为真实的局域网 DNS。
    '+.home.arpa': system
    '+.lan': system
    '+.in-addr.arpa': system
    '+.ip6.arpa': system
    # 原 fallback-filter.geosite 的 GFW 分流移到域名策略；具体域名优先。
    'geosite:gfw':
      - 'https://dns.google/dns-query'
      - 'https://1.1.1.1/dns-query'
  fallback-filter:
    geoip: true
    geoip-code: CN
    ipcidr:
      - 0.0.0.0/8
      - 10.0.0.0/8
      - 100.64.0.0/10
      - 127.0.0.0/8
      - 169.254.0.0/16
      - 172.16.0.0/12
      - 192.168.0.0/16
      - 240.0.0.0/4

proxies: ~
proxy-groups: ~
rules: ~
