+++
categories = ["Development"]
date = "2018-07-05T09:00:00+02:00"
description = "Coding & Settings"
draft = false
tags = ["api","code", "rtc", "webclient","webrtc"]
title = "Video RTC · Webclient"
image = "/postimages/development/ivrpowers-videortc-coding.033.jpeg"
comments = true
+++

![VideoRTC.js](/postimages/development/ivrpowers-videortc-coding.033.jpeg)
-------
###### Photo source: Interactive Powers, Pexels Creative Commons

**Webclient (WebRTC)** provides a user-friendly webphone that allows all your customers and users to make phone calls directly from a website to your business IVR or PBX from any desktop native [WebRTC](http://blog.ivrpowers.com/post/technologies/what-is-webrtc/) compliant web browser (Firefox, Chrome, Opera,…). In this post we will show you how to customize the Webclient using the different configuration options at flavour/theme level.

The design of our webclient is composed by a logo and a main default color. It adds a toolbar mode that shows the different options that the client can use during the call. This style can be adapted to the needs of a client through the file parameters of the flavour.

Within a Flavour configuration, there is a folder called "webclient" that contains all these configuration files:

* **configWebclient.js** - WebClient configuration file.
* **loading.gif** - Calling animation.
* **overprint.png** - Overprint feature (company logo over Video).
* **waiting-video-agent.png** - Logo until the agent accept the Video.
* **webclient-logo.png** - Logo for WebClient Use Case.
* **webclient-logo-btn.png** - Company Icon Webclient Toolbar.

The file called configWebclient.js contains a JSON object with different parameters that can be easily configured in the usecase. Here a list of features available:

* **Auto Call** - The call starts when the popup is opened.
* **Auto Close** - The popup is closed when the call is finished.
* **Call Settings** - Local video may start muted or may not be displayed on the screen.
* **Controls** - We currently have three design modes (toolbar-top, toolbar-bottom, classic).

### Mode: toolbar-top

![VideoRTC.js](/postimages/development/ivrpowers-slide.007.jpeg)

### Mode: toolbar-bottom

![VideoRTC.js](/postimages/development/ivrpowers-slide.008.jpeg)

### Mode: classic

![VideoRTC.js](/postimages/development/ivrpowers-slide.009.jpeg)

### Mode: classic (custom)

![VideoRTC.js](/postimages/development/ivrpowers-slide.010.jpeg)

In the classic mode you can play to place the buttons in any desired positions. You can also hide any uninteresting icon too.

* **Calling** - Set a text and animation during the calling establishement.
* **LiveChat** - Set chat, emoticons, sound notifications, type of data, maximum sizes in files.
* **Overprint** - Add an [Over Printing](http://blog.ivrpowers.com/post/products/video-rtc-over-printing/) logo image in a corner of the screen is offered. 
* **Phone Color** - Set the main color of the Webclient Use Case.
* **Texts** - Set all messages modifications or translations into any language.
* **Type Call** - Set Webclient as audio call only or video call.

configWebclient.js - JavaScript:

```javascript
var phoneColor = '#FD554D';
var configWebClient = {
    autocall: false,
    autoClose: false,
    calling: {
        title: 'Calling',
        ...
    },
    callSettings: {
        startAudioMuted: false,
        ...
    },
    controls: {
        type: 'classic', // toolbar-top, toolbar-bottom, classic
        buttons: [
            {
                id: 'call',
                class: 'webclient-btn-hover-green',
                btnSrc: 'assets/icons/Call-White.png',
                btnOption: 'enabled',
                classicMode: {
                    positionX: 'left',
                    positionY: 'bottom',
                    distanceX: '15px',
                    distanceY: '15px'
                }
            },
            ...
        ],
        ...
    }
    liveChat: {
        enabled: true,
        emoji: true,
        soundHandle: true,
        allowedTypes: ['image/jpeg', 'image/png'],
        maxSize: 5, // MB
        ...
    },
    overprint: {
        enabled: true,
        position: 'right',
        ...
    },
    texts: {
        labelCallHungUp: 'Call hung up',
        ...
    },
    typeCall: {
        audio: true,
        video: true
    }
};
```

If you require a specific custom design and these available options do not fit with it, you can always develop your own WebClient application from an empty document using our [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/) library.

Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with our **API Framework**.

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers) · Github: [IVRPowers](https://github.com/ivrpowers)
 
---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

