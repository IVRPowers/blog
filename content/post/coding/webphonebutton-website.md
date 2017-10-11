+++
categories = ["coding"]
date = "2017-10-11T11:30:24+02:00"
description = "Coding"
draft = false
tags = ["webphone","code","videortc"]
title = "How to Add a Webphone Button in your Website"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++

![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons



In this post we will show you how to add a Webphone button in your website using our customizable webcall widget.


## Step one: Installation

To install the Webphone Button in your web­page you need to download our webcall widget
[webcall_widget_noflash.zip](https://downloads.ivrpowers.com/software/webclient/webcall_widget_noflash.zip) and uncompress it in the directory of your website.

To insert it, you first need to add the CSS Stylesheet file to your webpage.

~~~html
<link rel="stylesheet" href="assets/webcall_widget.css">
~~~

Then you need to import the main JavaScript file of the widget.

~~~html
<script src="webcallWidget.js"></script>
~~~

Finally, you need to create a WebcallWidget instance.

~~~html
<script type="text/javascript">
	var webcallWidget = new WebcallWidget('WEBPHONE_URL', 'DESIGN','ALIGN', 'COLOR');
	webcallWidget.create();
</script>
~~~


## Step 2: Available configurations

It is possible to configure some parameters to give your button a custom style: design, horizontal align and main color.

**Webphone URL:** URL to the webphone to open

**Design selection:** top, top-corner, middle, bottom

**Horizontal align:** left, right

**Color:** you can insert any color code that is compatible with HTML and CSS


## Step 3: Customizing our button

In our case we will configure the button to open our webclient product.

In addition, we have chosen to place it at the top right and with the corporate colour of IntPowers.

~~~javascript
var webcallWidget = new WebcallWidget('http://webphone.ivrpowers.com', 'top', 'right', ’#FF6E5F’);
webcallWidget.create();
~~~

The result below:

![webphone button](/postimages/coding/webphone-ivrpowers.jpeg)

## Step 4: Try it on your website

If you want, you can check now how it looks on your web-site in the following link:
[http://webclient.ivrpowers.com/](http://webclient.ivrpowers.com/)



Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
