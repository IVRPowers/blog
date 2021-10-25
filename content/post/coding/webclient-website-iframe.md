+++
categories = ["coding"]
date = "2018-05-07T20:00:00+02:00"
description = "Coding"
draft = false
tags = ["webphone","code","videortc"]
title = "How to insert a Webphone into an iFrame"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++

![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons

In a [previous post](https://blog.ivrpowers.com/post/coding/webphonebutton-website/) we explained how to include a Webphone button to launch our Webclient (Webphone) in a popup window. In this case, we want to include the Webclient directly in a website as an iFrame and not in an external page.

## Including an iFrame element

First of all, you need to include an iFrame HTML5 element in your website like this:

~~~html
<iframe frameBorder="0"
width="640px" height="480px"
src="URL" allow="microphone;camera;display-capture"></iframe>
~~~

Note that we have configured an iFrame size of 640x480px, which is the default size for our Webclient (Webphone) design. In addition, it is necessary to add a tag to allow access to the microphone and the camera and that our application can work properly.

![webclient iframe](/postimages/coding/webclient-iframe.jpeg)

##	Styling the iFrame

We already have the element included, now we are going to add some CSS rules to give it a shadow effect and improve its design.

~~~css
-moz-box-shadow: 4px 4px 14px #000;
-webkit-box-shadow: 4px 4px 14px #000;
box-shadow: 4px 4px 14px #000;
~~~

##	Can you see the iFrame but it doesn't work?

It has been detected that in some browsers, such as Chrome, there is a condition that requires the web page on which you want to load the iFrame to use the HTTPS secure protocol instead of HTTP. If this is not the case, video calls may not be possible.

Please, [contact our sales](https://www.ivrpowers.com/support-services/) for any project or get more information. Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](https://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
 
---
[Interactive Powers](https://www.ivrpowers.com/ ) - Streamline your business communications

