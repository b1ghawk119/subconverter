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
  prefer-h3: true
  listen: 0.0.0.0:8853
  respect-rules: true
  ipv6: true
  enhanced-mode: fake-ip
  fake-ip-range: 28.0.0.1/8
  #fake-ip-range: 198.10.0.1/16
  fake-ip-filter:
    - "*.lan"
    - "*.localdomain"
    - "*.example"
    - "*.invalid"
    - "*.localhost"
    - "*.test"
    - "*.local"
    - "*.home.arpa"
    - dl.google.com
    - dl.l.google.com
         #放行NTP服务"
    - "time.*.com"
    - "time.*.gov"
    - "time.*.edu.cn"
    - "time.*.apple.com"
    - "time1.*.com"
    - "time2.*.com"
    - "time3.*.com"
    - "time4.*.com"
    - "time5.*.com"
    - "time6.*.com"
    - "time7.*.com"
    - "ntp.*.com"
    - "ntp1.*.com"
    - "ntp2.*.com"
    - "ntp3.*.com"
    - "ntp4.*.com"
    - "ntp5.*.com"
    - "ntp6.*.com"
    - "ntp7.*.com"
    - "*.time.edu.cn"
    - "*.ntp.org.cn"
    - "+.pool.ntp.org"
    - "time1.cloud.tencent.com"
         #放行网易云音乐"
    - "music.163.com"
    - "*.music.163.com"
    - "*.126.net"
         #百度音乐"
    - "musicapi.taihe.com"
    - "music.taihe.com"
         #酷狗音乐"
    - "songsearch.kugou.com"
    - "trackercdn.kugou.com"
         #酷我音乐"
    - "*.kuwo.cn"
         #JOOX音乐"
    - "api-jooxtt.sanook.com"
    - "api.joox.com"
    - "joox.com"
         #QQ音乐"
    - "y.qq.com"
    - "*.y.qq.com"
    - "streamoc.music.tc.qq.com"
    - "mobileoc.music.tc.qq.com"
    - "isure.stream.qqmusic.qq.com"
    - "dl.stream.qqmusic.qq.com"
    - "aqqmusic.tc.qq.com"
    - "amobile.music.tc.qq.com"
         #虾米音乐"
    - "*.xiami.com"
         #咪咕音乐"
    - "*.music.migu.cn"
    - "music.migu.cn"
         #win10本地连接检测"
    - "+.msftconnecttest.com"
    - "+.msftncsi.com"
    - "msftconnecttest.com"
    - "msftncsi.com"
         #QQ快捷登录"
    - "localhost.ptlogin2.qq.com"
    - "localhost.sec.qq.com"
         #Game"
         #Nintendo Switch"
    - "+.srv.nintendo.net"
         #Sony PlayStation"
    - "+.stun.playstation.net"
         #Microsoft Xbox"
    - "xbox.*.microsoft.com"
    - "xnotify.xboxlive.com"
    - "+.ipv6.microsoft.com"
         #Wotgame"
    - "+.battlenet.com.cn"
    - "+.wotgame.cn"
    - "+.wggames.cn"
    - "+.wowsgame.cn"
    - "+.wargaming.net"
         #Golang"
    - "proxy.golang.org"
         #STUN"
    - "stun.*.*"
    - "stun.*.*.*"
    - "+.stun.*.*"
    - "+.stun.*.*.*"
    - "+.stun.*.*.*.*"
         #Linksys Router"
    - "heartbeat.belkin.com"
    - "*.linksys.com"
    - "*.linksyssmartwifi.com"
         #ASUS Router"
    - "*.router.asus.com"
         #Apple Software Update Service"
    - "mesu.apple.com"
    - "swscan.apple.com"
    - "swquery.apple.com"
    - "swdownload.apple.com"
    - "swcdn.apple.com"
    - "swdist.apple.com"
         #Google"
    - "lens.l.google.com"
    - "stun.l.google.com"
         #Netflix"
    #- "+.nflxvideo.net"
         #FinalFantasy XIV Worldwide Server & CN Server"
    - "*.square-enix.com"
    - "*.finalfantasyxiv.com"
    - "*.ffxiv.com"
    - "*.ff14.sdo.com"
    - "ff.dorado.sdo.com"
         #Bilibili"
    - "*.mcdn.bilivideo.cn"
         #Disney Plus"
    - "+.media.dssott.com"
    - "+.pvp.net"
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
  nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query
  fallback:
    - https://dns.google/dns-query#RULES
    - https://cloudflare-dns.com/dns-query#RULES
  proxy-server-nameserver:
    - https://doh.pub/dns-query
    - https://dns.alidns.com/dns-query
  direct-nameserver:
    - https://dns.alidns.com/dns-query
    - https://doh.pub/dns-query
  nameserver-policy:
    "geosite:cn":
      - https://dns.alidns.com/dns-query
      - https://doh.pub/dns-query
    'dl.google.com': 
      - 223.5.5.5
      - 119.29.29.29
    'dl.l.google.com': 
      - 223.5.5.5
      - 119.29.29.29
    '+.arpa': '10.0.0.1'
  fallback-filter:
    geoip: true
    geoip-code: CN
    geosite:
      - gfw
    ipcidr:
      - 240.0.0.0/4
      - 0.0.0.0/32
      - 127.0.0.1/32
    domain:
      - '+.google.com'
      - '+.googleapis.com'
      - '+.youtube.com'
      - '+.facebook.com'
      - '+.twitter.com'
      - '+.github.com'
      - '+.githubusercontent.com'
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
