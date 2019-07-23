+++
categories = ["news"]
date = "2019-07-23T20:00:00+02:00"
description = "Technology Update"
draft = false
tags = ["firefox","videortc","webrtc","rtc"]
title = "Security improvement for WebRTC in Firefox 68"
image = "/postimages/news/ivrpowers-post-07.002.jpeg"
+++

![Firefox 68](/postimages/news/ivrpowers-post-07.002.jpeg)
------------
###### Photo Source: Creative Commons

# Firefox 68 will now only expose camera and microphone in secure contexts.
---

As of **Firefox 68** — releasing past weeks — [WebRTC](http://blog.ivrpowers.com/post/technologies/what-is-webrtc/) camera and microphone will require an https connection to work. **Access from insecure http will cease to work, matching how Chrome works**. Camera and microhone are powerful features, and Firefox will now only expose them in secure contexts, a security and privacy improvement.

Largely an issue for developers to catch up on, this may nonetheless affect end users who follow old http links to servers that either still don’t redirect their users to https automatically, or don’t support it at all. If you’re experiencing this problem, click your URL bar, and if the URL starts with http, try changing it to https, and it should work again, provided the server supports https...

Please read more at: https://blog.mozilla.org/webrtc/camera-microphone-require-https-in-firefox-68/

---
[Interactive Powers](http://www.ivrpowers.com/ ) - Streamline your business communications