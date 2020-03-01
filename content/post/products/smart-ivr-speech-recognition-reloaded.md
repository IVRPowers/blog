+++
categories = ["products"]
date = "2020-02-28T15:00:00+02:00"
description = "ASR Connectors"
draft = false
tags = ["voicexml","ivr","asr","nlu"]
title = "Smart IVR · Speech Recognition Reloaded"
featured = false
image = "/postimages/products/slides-2020-01.014.jpeg"
+++

![Smart IVR · Speech Recognition](/postimages/products/slides-2020-01.014.jpeg)

#	More and better protocols to improve performance of your interactive phone services.
---

**Speech recognition** is a key complementary feature for any [IVR](https://blog.ivrpowers.com/post/technologies/what-is-ivr/) in order enables the recognition and translation of spoken language into text for your voice application coding. It is also known as **automatic speech recognition (ASR)** or **speech to text (STT)**. [Smart IVR](https://www.ivrpowers.com/voicexml/) support today three connectors since the last release 2.x and it has the ability to use them in perfect combination for all services. 

## ◾️ ASR-MRCP Connector
Connector for Nuance Recognizer 9 or upper

This connector is for a legacy speech engine running [MRCP v2](https://tools.ietf.org/html/rfc6787), today we keep support for the leading speech engine Nuance Recognizer. It requires to connect an MRCP server in order to process speech recognition requests. This method is powered by  standard VoiceXML 2.x.

Usage Recommendation:

* Short words like yes/no
* Static & Dynamic GRXML grammars
* Speech Keywords

## ◾️ ASR-HTTP Connector
Connector for Cloud Speech API with Google, Bing, Alexa	

This is the first connector for Cloud Speech API engines like Google, Bing (Microsoft Azure), Alexa (Amazon). This interface use a special VXML integration based on a REST-API  request with a subdialog. It’s very easy and reliant for most IVR services.

Usage Recommendation:

* Natural Language NLP/NLU
* Dynamic STT
* Call Steering
* Voicebots

## ◾️ ASR-GRPC Connector
Connector for Real-Time Streaming with Google Speech API. *New 2020

This connector is the most advanced method to connect an IVR to latest Speech Cloud API from Google using real-time audio streaming with [gRPC](https://grpc.io/). Compare to the previous ones, this connector is a full duplex real-time Speech API integration mode with NLU tag.

Usage Recommendation:

* Natural Language NLP/NLU
* Dynamic STT
* Call Steering
* Voicebots
* Conversational AI

## Comparision of ASR Connectors 

In order to summary available features and key differentiators between each connector, please find bellow a comparition table with most information.

| Connectors | ASR-MRCP | ASR-HTTP | ASR-GRPC |
|-----------|-----------|-----------|-----------|
| Speech Engine | Nuance 9 or upper | Google, Bing, Alexa | Google |
| Protocol | MRCP v2 | REST-API | gRPC |
| Grammar | GRXML | Not required | Not required |
| Barge-in | Yes | No | Yes |
| Connectivity | MRCP Server | Internet | Internet |
| Framework | VoiceXML 2.x | VoiceXML 2.0 | VoiceXML 2.x extended |
| Usage | Tier 2, 3, 4 | NLP / NLU | NLP / NLU |
| Coding | Complex | Easy | Simple (NLU Tag) |
| Engine Model | per channel | per transaction | per transaction |
| Speed | High | Medium | High (RT Streaming) |
| Languages | <100 | >120 | 120 |
| Version | 1.x,  2.x | 1.x, 2.x | 2.x |

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications


