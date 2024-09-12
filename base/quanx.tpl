[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
network_check_url=http://223.5.5.5
server_check_url=http://1.1.1.1

[dns]
server = 223.5.5.5
server = 223.6.6.6
server = 1.2.4.8
#server = 182.254.116.116
#server = 119.28.28.28

server=/taobao.com/223.6.6.6
server=/*.taobao.com/223.6.6.6
server=/tmall.com/223.6.6.6
server=/*.tmall.com/223.6.6.6
server=/jd.com/119.29.29.29
server=/*.jd.com/119.28.28.28
server=/*.qq.com/119.28.28.28
server=/*.tencent.com/119.28.28.28
server=/*.alicdn.com/223.5.5.5
server=/aliyun.com/223.5.5.5
server=/*.aliyun.com/223.5.5.5
server=/weixin.com/119.28.28.28
server=/*.weixin.com/119.28.28.28
server=/bilibili.com/119.29.29.29
server=/*.bilibili.com/119.29.29.29
server=/hdslb.com/119.29.29.29
server=/163.com/119.29.29.29
server=/*.163.com/119.29.29.29
server=/126.com/119.29.29.29
server=/*.126.com/119.29.29.29
server=/*.126.net/119.29.29.29
server=/*.127.net/119.29.29.29
server=/*.netease.com/119.29.29.29
server=/mi.com/119.29.29.29
server=/*.mi.com/119.29.29.29
server=/xiaomi.com/119.29.29.29
server=/*.xiaomi.com/119.29.29.29
server=/routerlogin.net/system
server=/_hotspot_.m2m/system
server=/router.asus.com/system
server=/hotspot.cslwifi.com/system
server=/amplifi.lan/system

[policy]
static=♻️ 自动选择, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/available.png
static=🔰 节点选择, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/static.png
static=🌍 国外媒体, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Streaming.png
static=🌏 国内媒体, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/StreamingCN.png
static=🌏 BiliBili, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/bilibili.png
static=Ⓜ️ 微软服务, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Microsoft.png
static=📲 电报吹水, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Telegram.png
static=🍎 苹果服务, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Apple.png
static=🎯 全球直连, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/direct.png
static=🛑 劫持拦截, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Advertising.png
static=🛑 拦截, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Advertising.png
static=🐟 漏网之鱼, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Final.png
static=📹 YouTube, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/YouTube.png
static=🎥 NETFLIX, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Netflix.png
static=📺 巴哈姆特, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Bahamut.png
static=📺 AbemaTV, direct, img-url=https://raw.githubusercontent.com/A1exInamin/Zure/master/IconSet/AbemaTV.png
static=🎵 网易云音乐,, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Netease.png
static=🐟 规则外路由选择, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Final.png
static=🇭🇰 香港节点, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/HK.png
static=🇨🇳 台湾节点, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/TW.png
static=🇸🇬 狮城节点, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/SG.png
static=🇯🇵 日本节点, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/JP.png
static=🇺🇲 美国节点, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/US.png
static=🚀 其他节点, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/other.png
static=Proxies, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Proxy.png
static=Apple, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Apple.png
static=Telegram, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Telegram.png
static=Youtube, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/YouTube.png
static=Netflix, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Netflix.png
static=Netease, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Netease.png
static=HKMTMedia, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/HKMTMedia.png
static=GlobalMedia, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/GlobalMedia.png
static=Final, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/Final.png
static=HK, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/HK.png
static=SG, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/SG.png
static=TW, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/TW.png
static=JP, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/JP.png
static=US, direct, img-url=https://raw.githubusercontent.com/Orz-3/mini/master/US.png

[server_remote]

[filter_remote]

[rewrite_remote]
#
# 参数「tag」和「enabled」是可选的。
#

# 通用
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/General.conf, tag=🔀General, enabled=true

https://subweb.oss-cn-hongkong.aliyuncs.com/Module/embyUnlocked.conf, tag=🔀General, enabled=true

# Advertising 广告
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/Block/Advertising.conf, tag=🛡未满 30 天在「重写规则」手动缓存脚本, update-interval=86400, enabled=true

# YouTube 广告
https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/Block/YouTubeAds.conf, tag=🛡Premium 勿用且版本需 ≤ 15.26.4, update-interval=86400, enabled=false

# TikTok
#https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/Unlock/TikTokJP.conf, tag=🔓TikTokJP(多选一不可共用), update-interval=86400, enabled=false
#https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/Unlock/TikTokKR.conf, tag=🔓TikTokKR(多选一不可共用), update-interval=86400, enabled=false
#https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/Unlock/TikTokTW.conf, tag=🔓TikTokTW(多选一不可共用), update-interval=86400, enabled=false
#https://raw.githubusercontent.com/DivineEngine/Profiles/master/Quantumult/Rewrite/Unlock/TikTokUK.conf, tag=🔓TikTokUK(多选一不可共用), update-interval=86400, enabled=false


[server_local]

[filter_local]
ip-cidr, 10.0.0.0/8, direct
ip-cidr, 127.0.0.0/8, direct
ip-cidr, 172.16.0.0/12, direct
ip-cidr, 192.168.0.0/16, direct
ip-cidr, 224.0.0.0/24, direct
#geoip, cn, direct
final, proxy

[rewrite_local]
#TikTok需要其他国家自行修改JP
(?<=_region=)CN(?=&) url 307 JP
(?<=&mcc_mnc=)4 url 307 2
^(https?:\/\/dm[\w-]+\.\w+\.com\/.+)(\?)(.+) url 302  $1$3
# Redirect Google Search Service
^(http|https):\/\/(www.)?(g|google)\.com\.hk url 302 https://www.google.com.tw

[mitm]
hostname = *.music.163.com, music.163.com, *.music.126.net, music.126.net, *.abema.tv, *.amemv.com, abema.tv, api.abema.io, *.tiktokv.com,*.byteoversea.com,*.tik-tokapi.com,www.google.com.hk
p12=MIIEWgIBAzCCBCAGCSqGSIb3DQEHAaCCBBEEggQNMIIECTCCAv8GCSqGSIb3DQEHBqCCAvAwggLsAgEAMIIC5QYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQIEbxT6Tq17dsCAggAgIICuCzGa3ovYwnv6OIzJLkSKyAFypSmJ8KTBPyai2s1heOTIf3PoC0aSml1Q0blJ2R9tAEJMS3SoM4PjNK6q6nGycAgx1dIUFEQG7DEQebVP0XHHK6uNyRPqgXPrhCXjqZSOLhpcsg4BfLRjf0S0fquZySAi7kn5IXUo1fUey2r/36UkT8imBHPsUSsllryK5dXBQAwJtPYGl7nV50F/LA58ckv5pT+gDS4vVvUAytPfoqTDPCUEMzrZkXu7ZP/6YP+DeUgLXFvEubSkmrEeztJoC2GozClPNtRHfbMzA/jTH1/lOZ1zDdvrNheDLgP8CBv/mawNy4dxrJozfOcdEiWdLAMp8PmcXvaY9sNVlYYP+ztIMA/oaIHEycsOvx1PxMU2i8s/SIZBDszdHgRqKC6fVJxcrv0qtYdUlmfGKWt85LeB7JPXlmfs6ovGrZuc9y2WNnq2cbPmZuKbdxB5j/oM8jA6fLO9Z1MZDEXo42CgU7ZONjK8/bLG5J3wlI4DnC6HYwk3hSUWRBFpjNkRlUhZZWwMsfjBmYG9/hvDF7aGCeBDwm/euWLz9lGuUqRs5F11YhRL2dhOHC2mB4fhsSGbsgOps15fsuUydheYbU12hkGfYQSNsVi0d1GiGIsdiEtrYhXAWnY6DfGPERbhYvwlPSUAvdgWltC/BYgVMM//y3PwCVhcjEfYOK6k3ZNLuIc4Nebk2FPI7u0eXCk0Pi/RiSlOiBO79B2jpEdpyQbEDYAvetEsmaU6M8SZMMHnupNET/Sy+LlpFhRDSRcQndHpBkw166rM+6H3IHewJyYZBNvesltVBuSGtmJx57QI63CgCTUiu/UmWlHKmGuK5pHbMJlkREWJnVYqT3WIoB7MCX19bhLWxfbcLO+pipr8jrrjUF0skOLwg7HxnqHDk6oLyN4eLgn3Kr70zCCAQIGCSqGSIb3DQEHAaCB9ASB8TCB7jCB6wYLKoZIhvcNAQwKAQKggbQwgbEwHAYKKoZIhvcNAQwBAzAOBAgCgEDjD1kMngICCAAEgZCwn6xW0rtwHctlMsJw20caSgWcFTLcNBTgISSri2XLMeJfvygcgFbO7/zT64stk1tVZRktjAX/fELsFp4Xw/UspdVG6CgsRE7QcY+CT8wn6dvusvU2mv3KpI7NwrXmUMsKNbW5N8Qh37WYTCg5mvA7jFAazC+RnKgoMvMVnQbuT1CMJ3in7lPIsPTW3ub0188xJTAjBgkqhkiG9w0BCRUxFgQU8ZGlcfqIeitY4nkiNU7TX5gEi6MwMTAhMAkGBSsOAwIaBQAEFCBiCE2z1g+P8yPQTFy79/Pahq/lBAixZy/UGOLmVQICCAA=
passphrase=rixCloudPKI