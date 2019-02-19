+++
categories = ["support"]
date = "2019-02-19T15:00:26+02:00"
description = "Operating System Upgrade"
draft = false
tags = ["support","videortc"]
title = "Ready for Video RTC 4.0 on Debian 9"
image = "/postimages/support/ivrpowers-post-04.022.jpeg"

+++

![Debian 9](/postimages/support/ivrpowers-post-04.022.jpeg)
------------
###### Photo Source: Interactive Powers. Creative Commons

# Running on Debian 8? Here’s how to go to Debian 9
---

If you running a **Video RTC Gateway (WebRTC)** since 2017 or 2018, then your operating system is on Debian 8. To move up to the next update or [version 4.0](http://blog.ivrpowers.com/post/news/2019-02-rtc-upcoming-4/) you will have to upgrade to **Linux OS Debian 9 (Stretch) x86 64-bit**.

Our next **binary packages** or **CPaaS instances** will now includes an installer script to automatically take you to **Debian 9**. There is no need to login to SSH or enter any commands in the Linux Shell. We recommend you plan for this upgrade out of office hours and if you have it on a VM, take a snapshot.

##	Before, upgrading…

As a precaution – **take a full backup of your system and store it in a separate location (not on the host)**. If you are running [Video RTC (WebRTC) 3.3.1](http://blog.ivrpowers.com/post/updates/update-video-rtc-webrtc-3.3.1/) as a VM, take a snapshot. This upgrade is designed for installs made with the 1.X, 2.X and 3.X. If you installed Debian 8 manually then upgrade it manually.

If you installed other software, such as a VPN, perform the upgrade manually. The upgrade will take approximately **5 minutes**. The Video Gateway won’t be working during the upgrade.

##	Upgrade to Debian 9...

Follow these steps:

1. Check that you are indeed on Debian 8. Debian 8 users will see a new OS Update Available. If you don’t see it, you are not on Debian 8.
2. Click on the update, the upgrade screen will be shown. Read the disclaimer and click “Upgrade” to start the process. The upgrade will:
    1. Uninstall Video RTC (no required if you don’t have to backup).
    2. Upgrade the OS to Debian 9 (full upgrade, clean all).
    3. Install the latest updates of Debian (so you are fully up to date).
    4. Install latest 4.0 version of Video RTC and restore the data.
3. Once complete and the system is back up, update your license.

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

