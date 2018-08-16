+++
categories = ["coding"]
date = "2018-08-16T10:00:00+02:00"
description = "Coding & Debugging"
draft = false
tags = ["debugging","code","videortc"]
title = "Logging with Log Rotation"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"
comments = true
+++

![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons

#   Improve your Video RTC debugging tasks and platform monitoring for all your applications
---

Logging takes place in the execution of your [Video RTC applications](http://blog.ivrpowers.com/post/products/real-time-communications-applications/) to provide an audit trail that can be used to understand the activity of the system and to diagnose problems to find and fix bugs. We are pleased to talk a bout a very useful tool for managing log files called **Log Rotation**. We have decided to incorporate this tool to improve coding, monitoring and debbuging with all our [Video Gateway](http://www.ivrpowers.com/videortc/) solutions. This new internal feature allows automatic rotation, compression and removal of log history files. Each log file may be created *daily*, *weekly*, *monthly*, or when it grows too large.

~~~typescript
/etc/logrotate.d/webrtc-gateway
~~~

The default configuration we have set up next to the package is as follows:

~~~typescript
/var/log/webrtc-gateway.log {
	weekly
	rotate 12
	compress
	notifempty
	create 0644 root root
	postrotate
		/etc/init.d/webrtc-gateway restart > /dev/null 2>/dev/null || true
	endscript
}
~~~

Options:

* **weekly**: Log files are rotated
* **rotate**: Log files are rotated 12 times (3 last months)
* **compress**: Log files are compressed (.gz)
* **notifempty**: Do not rotate the log if it is empty
* **create**: The log file is created with 644 permissions and root user as owner
* **postrotate**: VideoGateway is restarted after rotating a log file

Of course, this feature is available by default for all our new **Video Gateway** services and  releases, and the system administrator can update its options at any time, or even deactivate it.

Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
 
 