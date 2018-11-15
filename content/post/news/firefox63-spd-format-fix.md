+++
categories = ["news"]
date = "2018-11-15T19:00:00+01:00"
description = "Technology Update"
draft = false
tags = ["screensharing","videortc","webrtc","rtc"]
title = "Mozzila Firefox 63+ fix for SDP format"
image = "/postimages/news/ivrpowers-slides-post.015.jpeg"
+++

![Mozzila Firefox 63](/postimages/news/ivrpowers-slides-post.015.jpeg)
------------
###### Photo Source: Mozzila Foundation

# Avoiding the Datachannel breaking in Firefox 63+
---

Nowadays, it is common for web browsers to make updates and changes to their implementations. This is even more common when we talk about modern technologies like [WebRTC](http://blog.ivrpowers.com/post/technologies/what-is-webrtc/). A new web browser update that confirms this theory is the last change on Firefox 63 when negotiating the Datachannel.

If you are negotiating a Datachannel with a Firefox version lower than 63, the Session Description Protocol (SDP) will looks something like this:

~~~bash
m=application 9 DTLS/SCTP 5000
a=sctpmap:5000 webrtc-datachannel 1024
~~~

However, this same negotiation in a Firefox63+ browser is different:

~~~bash
m=application 9 UDP/DTLS/SCTP webrtc-datachannel
a=sctp-port:5000
~~~

As you can see, the problem is that the new format is incompatible with the previous one. The old parser expected to find a number (5000) where the new parser expects a text (webrtc-datachannel).

To fix it, we have added the new SDP format to our Video Gateway (WebRTC). This [new 3.3.1 release](http://blog.ivrpowers.com/post/updates/update-video-rtc-webrtc-3.3.1/) includes a new parser will be able to handle the offers of Firefox 63+.

---
[Interactive Powers](http://www.ivrpowers.com/ ) - Streamline your business communications



