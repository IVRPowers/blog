+++
categories = ["coding"]
date = "2017-12-18T10:18:15+01:00"
description = "HTML/Javascript Code"
draft = false
tags = ["videortc","webrtc","browser"]
title = "How to detect if your Browser is WebRTC compliant?"
image = "/postimages/coding/ivrpowers-videortc-features.034.jpeg"

+++

![WebRTC compliant browsers](/postimages/coding/ivrpowers-videortc-features.034.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons


WebRTC is currently supported [by Mozilla Firefox, Google Chrome and Opera,](http://blog.ivrpowers.com/post/technologies/videortc-desktop-web-browser/) in both desktop and Android versions. Microsoft Internet Explorer and Edge and Apple Safari still have to add support for WebRTC. Currently, support in these browsers is provided by third-party plug-ins, which are not an ideal solution.

Here, we provide you with **an easy javascript code to check if your browser is supported by WebRTC.** In this way, we can avoid unpleasant surprises and mistakes. In case your browser is not supported, the script will redirect to the page that you specified in the code.


~~~javascript
<!DOCTYPE html>
<html>
<head></head>
<body>
<script type="text/javascript">
    var SUPPORTED_URL = "http://webrtc_supported_site.com";
    var UNSUPPORTED_URL = "http://webrtc__not_supported_site.com";

    function selectTechnologyLocation() {
        var isWebRTCSupported = navigator.getUserMedia ||
        navigator.webkitGetUserMedia ||
        navigator.mozGetUserMedia ||
        navigator.msGetUserMedia ||
        window.RTCPeerConnection;

        if (window.navigator.userAgent.indexOf("Edge") > -1) {
            return UNSUPPORTED_URL;
        }

        if (isWebRTCSupported) {
            return SUPPORTED_URL;
        }
        else {
            return UNSUPPORTED_URL;
        }
    }
    window.location = selectTechnologyLocation();
</script>
</body>
</html>
~~~

 
Now, you can see the script to check if your browser is supported by WebRTC. You have to write it in your page HTML. It is a very easy process:


~~~typescript
var SUPPORTED_URL = "http://webrtc_supported_site.com";
var UNSUPPORTED_URL = "http://webrtc__not_supported_site.com";
~~~
 
In **SUPPORTED_URL,** you should write the url to check it.

In **UNSUPPORTED_URL,** you should write the url of the web page. In case your browser is not supported, the script will redirect it to it.

The rest of the code checks the different browsers and the urls.




Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
