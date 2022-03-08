+++
categories = ["support"]
date = "2020-01-11T12:00:00+02:00"
description = "Live Communications"
draft = false
tags = ["support","videortc","rtc","webrtc"]
title = "Video RTC: System Requirements"
image = "/postimages/support/blogpost-ivrpowers.005.jpeg"
+++

![Video RTC: System Requirements](/postimages/support/blogpost-ivrpowers.005.jpeg)
------------
###### Photo Source: Interactive Powers. Creative Commons

##	What are the recommended Servers?

###	Operating System Requirements

[Video RTC](https://www.ivrpowers.com/videortc/) platforms are designed to run over a Linux Debian 11.X x86_64 distribution. Please make a minimal Linux Debian installation from Internet, USB or CD / DVD. To download the Linux distribution installation iso file go to: https://www.debian.org 

| Requirement | Description |
|-----------|-----------|
| Distribution | Linux Debian 9-11 |
| Linux Kernel | x86_64 |
| Cloud Ready | AWS, Google Cloud, Microsoft Azure |
| Installer | Minimal Install |

###	Port / Channel Definition

A port or channel is an aggregation of multiple software communication interfaces that creates a logical interface in a RTC service. One voice call or video call between two peers use one port or channel.

###	Server Models

| Server	| Size	| IaaS	| AWS Reference	|
|-----------|-----------|-----------|-----------|
| S	| Small	| AWS	| t2.small |
| M	| Medium	| AWS	| t2.medium |
| L	| Large	| AWS	| t2.large |
| XL	| Extra Large	| AWS	| t2.xlarge |

###	Server Requirements

| Ports	| CPU	| RAM	| Model	|
|-----------|-----------|-----------|-----------|
| 30	| 1-2 cores | 4 Gb	| S-M |
| 60	| 2-4 cores | 8 Gb	| M |
| 120	 | 4-6 cores |16 Gb	| L |
| 240	 | 6-8 cores	 | 32 Gb	| L-XL |

##	What are the Bandwidth requirements?

Video quality (screen resolution & bite rate) dynamically adjusts based on the strength of a user's network connectivity. The faster and more stable a peer broadband connection is, the better the video quality it will request.

Video calls can require anywhere from 3x to 20x the amount of bandwidth as an audio call, depending on the quality.  The same applies for other types of data transfers. A phone system will share the same internet bandwidth as your computing needs, and while web browsing and email won't have much of an impact, activities like streaming video and transferring large files will need to be taken into account for your estimate.

We recommend a minimum dedicated 128kb/s down per downloaded stream, as well as 128kb/s up per uploaded stream to maintain a stable video connection at 640x400 resolution.

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

Video RTC supports TLS connections and client-side port definition, to provide secured connections — specifically, to SIP Connect Server. Starting with release 3.X and upper, Video RTC supports TLS security features on all the operating system. 

**Secure Socket Layer (SSL)**

Video RTC supports SSL connections for WebRTC to encrypt communications between the Video Gateway and its source, web access and endpoints. Video RTC recommends using the OpenSSL toolkit to implement this feature.

###	Ports configuration

To run your Video RTC servers you have to open UDP/TCP ports:

| Protocol | Ports | Description |
|-----------|-----------|-----------|
| UDP | 19099 ...  20099 | RTP media (Audio & Video) |
| UDP | 5099 | SIP Signalling - Only open it from the IPs that interest you |
| TCP | 80 | HTTP - Website platform |
| TCP | 443 | HTTPS - Website secure platform |
| TCP | 8989 | WSS - API VideoGateway |
| TCP | 8089 | HTTPS - API VideoGateway |
| TCP | 7889 | HTTPS - Admin API - Only if you want the WebPanel |
| TCP | 22          | SSH (optional) |

##	What are the Video & Audio Recording requirements?

###	Video Recording Sizing

Format: 640x480 (2 peers)

| Duration | Low <80 kbps | Medium 128 kbps | High >300 kbps |
|-----------|-----------|-----------|-----------|
| 1 min | 1,5 Mb | 2,5 Mb | 16 Mb |
| 1 h (60 min) | 90 Mb | 150 Mb | 1 Gb |
| 1 day (24 h) | 2,16 Gb | 3,6 Gb | 24 Gb |
| 1 month (30 days) | 64,8 Gb | 108 Gb | 720 Gb |

###	Secure Export

You can select S3 exportation to a specific repository or external SSH / FTP server

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

