+++
categories = ["support"]
date = "2021-10-29T12:00:00+02:00"
description = "Live Communications"
draft = false
tags = ["support","acd","callcenter"]
title = "Web ACD: System Requirements"
image = "/postimages/support/blogpost-ivrpowers.026.jpeg"
+++

![Video RTC: System Requirements](/postimages/support/blogpost-ivrpowers.026.jpeg)
------------
###### Photo Source: Interactive Powers. Creative Commons

##	What are the recommended Servers?

###	Operating System Requirements

[Web ACD](https://www.ivrpowers.com/portfolio/call-center/) platforms are designed to run over a Linux Debian 10.X x86_64 distribution. Please make a minimal Linux Debian installation from Internet, USB or CD / DVD. To download the Linux distribution installation iso file go to: https://www.debian.org 

| Requirement | Description |
|-----------|-----------|
| Distribution | Linux Debian 10 |
| Linux Kernel | x86_64 |
| Cloud Ready | AWS, Google Cloud, Microsoft Azure |
| Installer | Minimal Install |

###	Port / Channel Definition

A port or channel is an aggregation of multiple software communication interfaces that creates a logical interface in an ACD service. One voice call or video call between two peers use one port or channel.

###	Server Models

| Server	| Size	| IaaS	| AWS Reference	|
|-----------|-----------|-----------|-----------|
| XS	| Micro	| AWS	| t2.micro |
| S	| Small	| AWS	| t2.small |
| M	| Medium	| AWS	| t2.medium |
| L	| Large	| AWS	| t2.large |

###	Server Requirements

| Ports	| CPU	| RAM	| Model	|
|-----------|-----------|-----------|-----------|
| 30	| 1 cores | 2 Gb	| XS |
| 60	| 1-2 cores | 4 Gb	| S-M |
| 120	| 2-4 cores | 8 Gb	| M |
| 240	 | 4-6 cores |16 Gb	| L |

##	What are the Bandwidth requirements?

Video quality (screen resolution & bite rate) dynamically adjusts based on the strength of a user's network connectivity. The faster and more stable a peer broadband connection is, the better the video quality it will request.

Video calls can require anywhere from 3x to 20x the amount of bandwidth as an audio call, depending on the quality.  The same applies for other types of data transfers. A phone system will share the same internet bandwidth as your computing needs, and while web browsing and email won't have much of an impact, activities like streaming video and transferring large files will need to be taken into account for your estimate.

We recommend a minimum dedicated 128kb/s down per downloaded stream, as well as 128kb/s up per uploaded stream to maintain a stable video connection at 640x400 resolution.

The following table lists the minimal network requirements to deliver reasonable audio and video quality.

| Network Parameter | Requirement |
|-----------|-----------|
| Audio Bandwidth (Uplink/Downlink) | 40 kbps / 40 kbps (Opus) (1) |
| Audio & Video Bandwidth (Uplink/Downlink) | 80 kbps / 80 kbps (Opus/VP8*) (2) |
| Latency (RTT) | < 300ms |
| Jitter | < 50ms |
| Packet Loss	 | < 1,5 % |

(1) (2) Opus, VP8 codecs are both available for ACD services.

###	Default Modes

| Mode | Kbps | Resolution & fps | Quality |
|-----------|-----------|-----------|-----------|
| Low | <80 kbps | 320x240 @ 30 fps | Acceptable |
| Medium | 128 kbps | 640x480 @ 30 fps | Excellent |
| High | >256 kbps | 640x480 @ 30 fps | Excellent |
| Ultra | 512 kbps | 1280x870 @ 30 fps | Outstanding |

###	Audio Streams

| Quality | Kbps | Codec |
|-----------|-----------|-----------|
| Excellent | 80 kbps | Opus |
| Excellent | 64 kbps | Opus | 
| Acceptable | 48 kbps | Opus |

###	Video & Audio Streams

| Quality | Kbps | Codec | Screen Resolution |
|-----------|-----------|-----------|-----------|
| Acceptable | >80 kbps | VP8 / Opus | 320x240 @ 30 fps |
| Acceptable | 128 | VP8 / Opus | 640x480 @ 30 fps |
| Excellent | <256 | VP8 / Opus | 640x480 @ 30 fps |
| Outstanding | 512 | VP8 / Opus | 1280x870 @ 30 fps |

##	What are the IP Network requirements?

###	Security Requirements

**Transport Layer Security (TLS)**

Web ACD supports TLS connections and client-side port definition, to provide secured connections — specifically, to SIP Connect Server. Starting with release 1.X and upper, Web ACD supports TLS security features on all the operating system. 

**Secure Socket Layer (SSL)**

Web ACD supports SSL connections for WebRTC to encrypt communications between the Video Gateway and its source, web access and endpoints. Web ACD recommends using the OpenSSL toolkit to implement this feature.

###	Ports configuration

To run your Web ACD servers you have to open UDP/TCP ports:

| Destination IP | Type | Port Range | Description |
|-----------|-----------|-----------|-----------|
| ACD | TCP | 80 | 	HTTP - Web Access (Forwarded) |
| ACD | TCP | 443 | HTTPS - Secure Web Access |
| ACD | TCP | 8089	 | Websocket - Voice over IP (Required) |
| ACD | UDP | 10000 … 20000 | RTP Media (Audio) (4) |

(4) RTP Media ports can be forwarded by STUN/TURN servers, to passthrough the router NAT (no recommended for Agents). If your network has a restrictive firewall you can avoid to set RTP ports range.

##	What are the Video & Audio Recording requirements?

###	Video Recording Sizing

Format: 640x480 (2 peers)

| Duration | Low <80 kbps | Medium 128 kbps | High >300 kbps |
|-----------|-----------|-----------|-----------|
| 1 min | 1,5 Mb | 2,5 Mb | 16 Mb |
| 1 h (60 min) | 90 Mb | 150 Mb | 1 Gb |
| 1 day (24 h) | 2,16 Gb | 3,6 Gb | 24 Gb |
| 1 month (30 days) | 64,8 Gb | 108 Gb | 720 Gb |

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

