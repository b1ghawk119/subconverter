[General]
loglevel = notify
bypass-system = true
replica = false
ipv6 = false
show-error-page-for-reject = true
exclude-simple-hostnames = true
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
bypass-tun = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
internet-test-url = http://223.6.6.6
proxy-test-url = http://1.1.1.1
always-real-ip = msftconnecttest.com, msftncsi.com, *.msftconnecttest.com, *.msftncsi.com, *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com

# macOS Only
enhanced-mode-by-rule = false
external-controller-access = passw0rd@0.0.0.0:6170
doh-server = https://223.6.6.6/dns-query
dns-server = 223.5.5.5, 223.6.6.6, 1.2.4.8

[Host]
ip6-localhost = ::1
ip6-loopback = ::1
doh.rixcloud.dev = server:119.29.29.29
taobao.com = server:223.6.6.6
*.taobao.com = server:223.6.6.6
tmall.com = server:223.6.6.6
*.tmall.com = server:223.6.6.6
jd.com = server:119.29.29.29
*.jd.com = server:119.28.28.28
*.qq.com = server:119.28.28.28
*.tencent.com = server:119.28.28.28
*.alicdn.com = server:223.5.5.5
aliyun.com = server:223.5.5.5
*.aliyun.com = server:223.5.5.5
weixin.com = server:119.28.28.28
*.weixin.com = server:119.28.28.28
bilibili.com = server:119.29.29.29
*.bilibili.com = server:119.29.29.29
hdslb.com = server:119.29.29.29
163.com = server:119.29.29.29
*.163.com = server:119.29.29.29
126.com = server:119.29.29.29
*.126.com = server:119.29.29.29
*.126.net = server:119.29.29.29
*.127.net = server:119.29.29.29
*.netease.com = server:119.29.29.29
mi.com = server:119.29.29.29
*.mi.com = server:119.29.29.29
xiaomi.com = server:119.29.29.29
*.xiaomi.com = server:119.29.29.29
routerlogin.net = server:system
_hotspot_.m2m = server:system
router.asus.com = server:system
hotspot.cslwifi.com = server:system
amplifi.lan = server:system
*.lan = server:system
mb3admin.com = 35.201.204.122

[URL Rewrite]
# Redirect Google Search Service
^(http|https):\/\/(www.)?(g|google)\.(cn|com\.hk) https://www.google.com.tw 302

# Redirect Google Maps Service
^(http|https):\/\/(ditu|maps).google\.(cn|com\.hk) https://maps.google.com 302

# Redirect HTTP to HTTPS
^(http|https):\/\/(www.)?taobao\.com\/ https://taobao.com/ 302
^(http|https):\/\/(www.)?jd\.com\/ https://www.jd.com/ 302
^(http|https):\/\/(www.)?mi\.com\/ https://www.mi.com/ 302
^(http|https):\/\/you\.163\.com\/ https://you.163.com/ 302
^(http|https):\/\/(www.)?suning\.com\/ https://suning.com/ 302
^(http|https):\/\/(www.)?yhd\.com\/ https://yhd.com/ 302

# Weibo Short URL
^http:\/\/t\.cn http://sinaurl.cn 302

# Redirect False to True
# > IGN China to IGN Global
^(http|https):\/\/(www.)?ign\.xn--fiqs8s\/ http://cn.ign.com/ccpref/us 302
# > Fake Website Made By C&J Marketing
^(http|https):\/\/(www.)?abbyychina\.com\/ https://www.abbyy.cn/ 302
^(http|https):\/\/(www.)?bartender\.cc\/ https://www.macbartender.com/ 302
^(http|https):\/\/(www.)?(betterzipcn|betterzip)\.(com|net)\/ https://macitbetter.com/ 302
^(http|https):\/\/(www.)?beyondcompare\.cc\/ https://www.scootersoftware.com/ 302
^(http|https):\/\/(www.)?bingdianhuanyuan\.cn\/ https://www.faronics.com/zh-hans/products/deep-freeze 302
^(http|https):\/\/(www.)?chemdraw\.com\.cn\/ https://www.perkinelmer.com.cn/ 302
^(http|https):\/\/(www.)?codesoftchina\.com\/ https://www.teklynx.com/ 302
^(http|https):\/\/(www.)?coreldrawchina\.com\/ https://www.coreldraw.com/cn/ 302
^(http|https):\/\/(www.)?crossoverchina\.com\/ https://www.codeweavers.com/ 302
^(http|https):\/\/(www.)?dongmansoft\.com\/ https://www.udongman.cn/ 302
^(http|https):\/\/(www.)?earmasterchina\.cn\/ https://www.earmaster.com/ 302
^(http|https):\/\/(www.)?easyrecoverychina\.com\/ https://www.ontrack.com/ 302
^(http|https):\/\/(www.)?ediuschina\.com\/ https://www.grassvalley.com/ 302
^(http|https):\/\/(www.)?flstudiochina\.com\/ https://www.image-line.com/ 302
^(http|https):\/\/(www.)?formysql\.com\/ https://www.navicat.com.cn/ 302
^(http|https):\/\/(www.)?guitarpro\.cc\/ https://www.guitar-pro.com/ 302
^(http|https):\/\/(www.)?huishenghuiying\.com\.cn\/ https://www.coreldraw.com/cn/ 302
^(http|https):\/\/hypersnap\.mairuan\.com\/ https://www.hyperionics.com/ 302
^(http|https):\/\/(www.)?iconworkshop\.cn\/ https://www.axialis.com/ 302
^(http|https):\/\/(www.)?idmchina\.net\/ https://www.internetdownloadmanager.com/ 302
^(http|https):\/\/(www.)?imindmap\.cc\/ https://www.ayoa.com/previously-imindmap/ 302
^(http|https):\/\/(www.)?jihehuaban\.com\.cn\/ https://www.chartwellyorke.com/sketchpad/x24795.html 302
^(http|https):\/\/hypersnap\.mairuan\.com\/ https://www.keyshot.com/ 302
^(http|https):\/\/(www.)?kingdeecn\.cn\/ http://www.kingdee.com/ 302
^(http|https):\/\/(www.)?logoshejishi\.com https://www.sothink.com/product/logo-design-software/ 302
^(http|https):\/\/logoshejishi\.mairuan\.com\/ https://www.sothink.com/product/logo-design-software/ 302
^(http|https):\/\/(www.)?luping\.net\.cn\/ https://www.techsmith.com/ 302
^(http|https):\/\/(www.)?mathtype\.cn\/ https://www.dessci.com/ 302
^(http|https):\/\/(www.)?mindmanager\.(cc|cn)\/ https://www.mindjet.com/cn/ 302
^(http|https):\/\/(www.)?mindmapper\.cc\/ https://www.mindmapper.com/ 302
^(http|https):\/\/(www.)?(mycleanmymac|xitongqingli)\.com\/ https://macpaw.com/ 302
^(http|https):\/\/(www.)?nicelabel\.cc\/ https://www.nicelabel.com/zh/ 302
^(http|https):\/\/(www.)?ntfsformac\.cc\/ https://www.tuxera.com/products/tuxera-ntfs-for-mac-cn/ 302
^(http|https):\/\/(www.)?ntfsformac\.cn\/ https://china.paragon-software.com/home-mac/ntfs-for-mac/ 302
^(http|https):\/\/(www.)?overturechina\.com\/ https://sonicscores.com/ 302
^(http|https):\/\/(www.)?passwordrecovery\.cn\/ https://cn.elcomsoft.com/aopr.html 302
^(http|https):\/\/(www.)?pdfexpert\.cc\/ https://pdfexpert.com/zh 302
^(http|https):\/\/(www.)?photozoomchina\.com\/ https://www.benvista.com/ 302
^(http|https):\/\/(www.)?shankejingling\.com\/ https://www.sothink.com/product/flashdecompiler/ 302
^(http|https):\/\/cn\.ultraiso\.net\/ https://cn.ezbsystems.com/ultraiso/ 302
^(http|https):\/\/(www.)?vegaschina\.cn\/ https://www.vegascreativesoftware.com/ 302
^(http|https):\/\/(www.)?xshellcn\.com\/ https://www.netsarang.com/zh/xshell/ 302
^(http|https):\/\/(www.)?yuanchengxiezuo\.com\/ https://www.teamviewer.com/ 302
^(http|https):\/\/(www.)?zbrushcn.com/ https://pixologic.com/ 302

# AbeamTV - api.abema.io
^(http|https):\/\/api\.abema\.io\/v\d\/ip\/check - reject

# Block Ads Start

# Block Ads End

[Script]

[MITM]
enable = false
tcp-connection = false
skip-server-cert-verify = true
hostname = www.google.cn, api.abema.io, *.google.com.hk
ca-passphrase = rixCloudPKI
ca-p12 = MIIEWgIBAzCCBCAGCSqGSIb3DQEHAaCCBBEEggQNMIIECTCCAv8GCSqGSIb3DQEHBqCCAvAwggLsAgEAMIIC5QYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQIEbxT6Tq17dsCAggAgIICuCzGa3ovYwnv6OIzJLkSKyAFypSmJ8KTBPyai2s1heOTIf3PoC0aSml1Q0blJ2R9tAEJMS3SoM4PjNK6q6nGycAgx1dIUFEQG7DEQebVP0XHHK6uNyRPqgXPrhCXjqZSOLhpcsg4BfLRjf0S0fquZySAi7kn5IXUo1fUey2r/36UkT8imBHPsUSsllryK5dXBQAwJtPYGl7nV50F/LA58ckv5pT+gDS4vVvUAytPfoqTDPCUEMzrZkXu7ZP/6YP+DeUgLXFvEubSkmrEeztJoC2GozClPNtRHfbMzA/jTH1/lOZ1zDdvrNheDLgP8CBv/mawNy4dxrJozfOcdEiWdLAMp8PmcXvaY9sNVlYYP+ztIMA/oaIHEycsOvx1PxMU2i8s/SIZBDszdHgRqKC6fVJxcrv0qtYdUlmfGKWt85LeB7JPXlmfs6ovGrZuc9y2WNnq2cbPmZuKbdxB5j/oM8jA6fLO9Z1MZDEXo42CgU7ZONjK8/bLG5J3wlI4DnC6HYwk3hSUWRBFpjNkRlUhZZWwMsfjBmYG9/hvDF7aGCeBDwm/euWLz9lGuUqRs5F11YhRL2dhOHC2mB4fhsSGbsgOps15fsuUydheYbU12hkGfYQSNsVi0d1GiGIsdiEtrYhXAWnY6DfGPERbhYvwlPSUAvdgWltC/BYgVMM//y3PwCVhcjEfYOK6k3ZNLuIc4Nebk2FPI7u0eXCk0Pi/RiSlOiBO79B2jpEdpyQbEDYAvetEsmaU6M8SZMMHnupNET/Sy+LlpFhRDSRcQndHpBkw166rM+6H3IHewJyYZBNvesltVBuSGtmJx57QI63CgCTUiu/UmWlHKmGuK5pHbMJlkREWJnVYqT3WIoB7MCX19bhLWxfbcLO+pipr8jrrjUF0skOLwg7HxnqHDk6oLyN4eLgn3Kr70zCCAQIGCSqGSIb3DQEHAaCB9ASB8TCB7jCB6wYLKoZIhvcNAQwKAQKggbQwgbEwHAYKKoZIhvcNAQwBAzAOBAgCgEDjD1kMngICCAAEgZCwn6xW0rtwHctlMsJw20caSgWcFTLcNBTgISSri2XLMeJfvygcgFbO7/zT64stk1tVZRktjAX/fELsFp4Xw/UspdVG6CgsRE7QcY+CT8wn6dvusvU2mv3KpI7NwrXmUMsKNbW5N8Qh37WYTCg5mvA7jFAazC+RnKgoMvMVnQbuT1CMJ3in7lPIsPTW3ub0188xJTAjBgkqhkiG9w0BCRUxFgQU8ZGlcfqIeitY4nkiNU7TX5gEi6MwMTAhMAkGBSsOAwIaBQAEFCBiCE2z1g+P8yPQTFy79/Pahq/lBAixZy/UGOLmVQICCAA=