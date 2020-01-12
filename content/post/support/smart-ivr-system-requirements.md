+++
categories = ["support"]
date = "2020-01-11T12:00:00+02:00"
description = "Live Communications"
draft = false
tags = ["support","smartivr", "ivr", "voicexml"]
title = "Smart IVR: System Requirements"
image = "/postimages/support/blogpost-ivrpowers.004.jpeg"
+++

![Smart IVR System Requirements](/postimages/support/blogpost-ivrpowers.004.jpeg)
------------
###### Photo Source: Interactive Powers. Creative Commons

##	What are the recommended Servers?

###	Operating System Requirements

[Smart IVR](https:/ivrpowers.com/voicexml/) platforms are designed to run over a Linux CentOS 7 x86_64 distribution. Please make a minimal Linux Debian installation from Internet, USB or CD / DVD. To download the Linux distribution installation iso file go to: https://www.centos.org 

| Requirement | Description |
|-----------|-----------|
| Distribution | Linux CentOS 7 |
| Linux Kernel | x86_64 |
| Cloud Ready | AWS, Google Cloud, Microsoft Azure |
| Installer | Minimal Install |

###	Port / Channel Definition

A port or channel is an aggregation of multiple software communication interfaces that creates a logical interface in a IVR service. One voice call between two peers use one port or channel.

###	Server Models

| Server	| Size	| IaaS	| AWS Reference	|
|-----------|-----------|-----------|-----------|
| S	| Small	| AWS	| t2.micro |
| M	| Medium	| AWS	| t2.small |
| L	| Large	| AWS	| t2.medium |
| XL	| Extra Large	| AWS	| t2.large |

###	Server Requirements

| Ports	| CPU	| RAM	| Model	|
|-----------|-----------|-----------|-----------|
| 30	| 1-2 cores	| 4 Gb	| S-M |
| 60	| 2-4 cores	| 8 Gb	| M |
| 120	 | 2-4 cores	|16 Gb	| M-L |
| 240	 | 6 cores	| 32 Gb	| L |

##	What are the Bandwidth requirements?

Phone calls can require anywhere an amount of bandwidth as an audio call, depending on the quality.  We recommend an *uncompressed* voice in 64 kb/s per call to maintain a stable phone connection for the best speech recognition experience.

### Default Modes

| Audio | Kbps | Codec | Quality |
|-----------|-----------|-----------|-----------|
| 8khz 8bit mono | 64 kbps | G711 alaw, ulaw | Acceptable |
| 7khz 8bit mono | 48 kbps | G722 | Not recommended |
| 8khz 8bit mono | 15 kbps | G729 | Not recommended |

###	Audio Streams

| Quality | Kbps | Codec |
|-----------|-----------|-----------|
| Excelent | 64 kbps | G711 | 

##	What are the IP Network requirements?

###	Security Requirements

**Transport Layer Security (TLS)**

Smart IVR supports TLS connections and client-side port definition, to provide secured connections — specifically, to SIP Connect Server. Starting with release 1.X, TLS security features on all the operating system. 

**Secure Socket Layer (SSL)**

Smart IVR  supports SSL connections to encrypt HTTP communications between the server and its sources, web access and endpoints. Smart IVR recommends using the OpenSSL toolkit to implement this feature.

###	Ports configuration

To run your Smart IVR servers you have to open UDP/TCP ports:

| Protocol | Ports | Description |
|-----------|-----------|-----------|
| UDP | 10000  ...  20000 | RTP media (Audio) |
| UDP | 5060  ..  5060    | SIP Signalling - Only open it from the IPs that interest you |
| TCP | 80          | HTTP - API Services (optional) |
| TCP | 443 | HTTPS - API Services |
| TCP | 22          | SSH (optional) |

##	What are the Audio Recording requirements?

###	Audio Recording Sizing

Format: 1 phone call (2 peers)

| Duration | G711 64 kbps |
|-----------|-----------|
| 1 min | 1,5 Mb |
| 1 h (60 min) | 90 Mb |
| 1 day (24 h) | 2,16 Gb |
| 1 month (30 days) | 64,8 Gb |

###	Secure Export

You can select S3 exportation to a specific repository or external SSH / FTP server.

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

