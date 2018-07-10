+++
categories = ["technologies"]
date = "2018-07-10T09:00:05+02:00"
description = "Technology Definition"
draft = false
tags = ["webrtc", "rtc", "videortc", "security"]
title = "What is a STUN/TURN server?"
image = "/postimages/technologies/ivrpowers-slide.017.jpeg"
comments = true
+++

![STUN/TURN Server](/postimages/technologies/ivrpowers-turn-stun-screen.005.jpeg)
-----------
###### Photo Source: Pixabay · Interactive Powers Creative Commons.

Our **Video Gateway (WebRTC)** platform offers all customers an advanced video real-tine communication solution through which all audio/video/data streams are transmitted. Generally, a Video Gateway has to be deployed over a public Internet so any user must connect and send media fragments over RTP (Real-time Transport Protocol) ports without specific issues.

##	Why you should require a STUN/TURN Server?

However, sometimes this is not enough. Some users try to connect through different networks where Firewalls and NATs (Network Address Translators) could include specific policies that do not allow any kind of [RTC]() communications. ICE (Interactive Connectivity Establishment) protocol is used to find the best connection solution. It defines a systematic way of finding possible communication options between a peer and the **Video Gateway (WebRTC)**.

##	What is a STUN Server?

Sometimes, you can use a protocol called **STUN (Session Traversal Utilities for NAT)** that allows clients to discover their public IP address and the type of NAT they are behind. This information is used to establish the media connection. In most cases, a **STUN server** is only used during the connection setup and once that session has been established, media will flow directly between the peer and the Video Gateway.

##	What is a TURN Server?

However, even if we setup properly a STUN server, there are very restrictive corporate networks (e.g: UDP traffic forbidden, only 443 TCP allowed…), which will require clients to use a TURN (Traversal Using Relays around NAT) server to relay traffic if direct (peer to Video Gateway) connection fails. In these cases, you can install our **TURN server** (in another instance) to solve these issues.

The TURN server is really easy to add for all your RTC developments, including it as another ICE server within the Video Gateway (WebRTC) connection array like this:

```javascript
var endPoints = [
    "https://example.com:HTTPS_PORT/webrtc-gateway"
];
var iceServers = [
    {
        url: "stun:server:port"
    },
    {
        url: "turn:server", 
        username: "myuser", 
        credential: "******"
    }
];
var myVideoApp = new VideoRTC(endPoints, iceServers, debugLevel);
```

Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with our **Video RTC** solutions.

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers) · Github: [IVRPowers](https://github.com/ivrpowers)

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications
