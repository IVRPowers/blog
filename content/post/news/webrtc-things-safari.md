+++
categories = ["news"]
date = "2017-09-28T13:09:34+02:00"
description = "WebRTC in Safari"
draft = true
tags = ["apple","webrtc","browser"]
title = "3 WebRTC things you must know about Safari11"
image = "/postimages/news/safari-apple-webrtc.005.jpeg"

+++

![WebRTC apple](/postimages/news/safari-apple-webrtc.005.jpeg)
---------
###### Image source: Interactive Powers' elaboration


After years, Apple has officially released a **new version of Safari with support for WebRTC!** 

These are the three essential things to know:


## Interoperability with other web browsers.

Basics work fine. If you run a simple peer-to-peer call between any of the 4 browsers, you’ll get a call going. Voice and video work over the lowest common denominator Opus+H.264 in Safari. Although Opus+VP8 will be also a possibility in the future, it is not right now with the current release.

## H264 multicasting is limited to Safari.

The challenge appears when trying to run a multicast (like Videoroom). While H.264 is supported by all browsers, the ability to use simulcast doesn’t exist with H.264. At the moment, Chrome doesn’t support simulcast with H.264. Now it is a matter of who moves first: Google by adding H.264 simulcasting to Chrome; or Apple by adding VP8 to Safari.

## Screen Sharing not ready yet. 

Right now the Datachannel seems to work but it may be not very stable according to several developers. One of things that are not available is the Screensharing options. This situation is really sad because currently Apple's users cannot have a complete experience with any [RTC](http://blog.ivrpowers.com/post/technologies/what-is-rtc/) solution.

###### Sources: https://www.commstrader.com/news/blog/one-apple-announcement-just-impacted-way-will-talk-customers/ and https://bloggeek.me/webrtc-ios-support/


---
[Interactive Powers](http://www.ivrpowers.com/ ) - Streamline your business communications



