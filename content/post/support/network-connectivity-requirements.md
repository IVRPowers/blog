+++
categories = ["support"]
date = "2020-11-17T20:00:00+02:00"
description = "Live Communications"
draft = false
tags = ["support","videortc","rtc","webrtc","acd"]
title = "Network Connectivity Requirements"
image = "/postimages/support/slides-2020-13.021.jpeg"
+++

![Network Connectivity Requirements](/postimages/support/slides-2020-13.021.jpeg)
------------
###### Photo Source: Freepik. Creative Commons

The following article outlines [Video RTC](https://blog.ivrpowers.com/post/products/video-rtc/) and [Mobile SDK](https://blog.ivrpowers.com/post/products/video-rtc-mobile-sdk/)s’ requirements for network connectivity. It lists the Interactive Powers [CPaaS](https://blog.ivrpowers.com/post/marketing/interactive-powers-cpaas/) servers’ ports and IP addresses that the Widgets, Webclients or SDKs must be able to reach, and the bandwidth required for quality audio & video. As shown in the diagram below, two types of connections are required, Signalling and Media for Users and Agents sides.

![Network Connectivity Requirements](/postimages/support/slides-2020-13.022.jpeg)

#	Connectivity checklist
---
1. Choose a network you will connect to and allow  RTC and ACD services
2. If you are using Global Low Latency edge, check bellow requirements
3. Ensure you meet the bandwidth requirements
4. Check the recommendations and best practices
5. Test your connectivity using our [Tester](https://blog.ivrpowers.com/post/products/video-rtc-tester/) tool

#	Agent Connectivity
---
**Agents require both RTC and ACD connectivity** to our CPaaS infrastructure to be able to place and receive calls or videocalls. The Signalling connection is a **secure TLS connection** that is used for sending and receiving control information to set up calls and the Media connection is **a secure SRTP** (Secure Real-time Transport Protocol) connection that is used to send and receive Audio & Video. 

In a typical organization network setup, a firewall is used to protect the private network hosts from the Internet. Firewalls are configured with rules to block or allow traffic to and from Internet destinations based on direction, protocol, and IP address. You have to set the following ports:

###	RTC Firewall Rules (Video Streams)

| Destination IP | Type | Port Range | Description |
|-----------|-----------|-----------|-----------|
| RTC | TCP | 80 | 	HTTP - Web Access (Forwarded) |
| RTC | TCP | 443 | HTTPS - Secure Web Access |
| RTC | TCP | 8989 | 	Websocket - Video Gateway (Recommended) |
| RTC | TCP | 8089	 |  HTTPS-API - Video Gateway (Alternative) |
| RTC | UDP | 19099 … 20099 | RTP Media (Video) (1) |

(1) RTP Media ports can be forwarded by STUN/TURN servers, to passthrough the router NAT (no recommended for Agents). If your network has a restrictive firewall you can avoid to set RTP ports range.

###	ACD Firewall Rules (Audio Streams)

| Destination IP | Type | Port Range | Description |
|-----------|-----------|-----------|-----------|
| ACD | TCP | 80 | 	HTTP - Web Access (Forwarded) |
| ACD | TCP | 443 | HTTPS - Secure Web Access |
| ACD | TCP | 8089	 | Websocket - VoIP |
| ACD | UDP | 10000 … 20000 | RTP Media (Audio) (2) |

(2) RTP Media ports can be forwarded by STUN/TURN servers, to passthrough the router NAT (no recommended for Agents). If your network has a restrictive firewall you can avoid to set RTP ports range.

#	User Connectivity
---
**Users require RTC connectivity** to our CPaaS infrastructure to be able to place and receive calls or videocalls. In a typical organization network setup, a firewall is used to protect the private network hosts from the Internet. Firewalls are configured with rules to block or allow traffic to and from Internet destinations based on direction, protocol, and IP address. You have to set the following ports:

###	RTC Firewall Rules (Audio & Video Streams)

| Destination IP | Type | Port Range | Description |
|-----------|-----------|-----------|-----------|
| RTC | TCP | 80 | 	HTTP - Web Access (Forwarded) |
| RTC | TCP | 443 | HTTPS - Secure Web Access |
| RTC | TCP | 8989 | 	Websocket - Video Gateway (Recommended) |
| RTC | TCP | 8089	 |  HTTPS-API - Video Gateway (Alternative) |
| RTC | UDP | 19099 … 20099 | RTP Media (Audio & Video) (3) |

(3) RTP Media ports can be forwarded by STUN/TURN servers, to passthrough the router NAT. If your network has a restrictive firewall you can avoid to set RTP ports range.

#	Network Bandwidth Requirements
---
The following table lists the minimal network requirements to deliver reasonable audio and video quality.

| Network Parameter | Requirement |
|-----------|-----------|
| Audio Bandwidth (Uplink/Downlink) | 40 kbps / 40 kbps (Opus) (4) |
| Audio & Video Bandwidth (Uplink/Downlink) | 80 kbps / 80 kbps (Opus/VP8*) (5) |
| Latency (RTT) | < 300ms |
| Jitter | < 50ms |
| Packet Loss	 | < 1,5 % |

(4) (5) Opus, VP8 codecs are both available for RTC and ACD services.

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

