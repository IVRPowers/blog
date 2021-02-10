+++
categories = ["updates"]
date = "2021-02-04T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webrtc","rtc","ivrpowers","changelog"]
title = "Video RTC (WebRTC) v4.3.0"
image = "/postimages/updates/ivrpowers-posts-01.088.jpeg"
featured = true
+++

# Release Note

We are pleased to announce that our new **Video RTC (Gateway WebRTC) v4.3.0** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 4.3.0:

```bash
## [4.3.0] - 2021-02-04
### Added
- Video feature in the Remote Viewer usecase
- Parameter to set the bitrate when screensharing in the SPLIT usecases
- Possibility to mute/unmute audio when using the RemoteViewer
- Autoconnect feature in the RemoteViewer
- Added a new usecase: SIPClient
- Possibility to configure a shortener URL to the RemoteViewer
- Possibility to start a RemoteViewer interaction without audio
- Recording prefix parameter on the SPLIT Agent
- Possibility to mute/unmute the local video automatically when screensharing
- Added urlClose param on the SPLIT Agent usecase
- File sharing as action on the Webclient
- Possibility to customize the Max. Channels message
- Possibility to hide remote labels on the Webclient
- Possibility to send via SIP the geoposition of the user when using the Webclient
- Possibility to send via SIP device information of the user when using the Webclient
- Added Blur background on the Split Agent usecase
- Added extra param on the Webclient to send custom data via SIP headers
- Possibility to disable emojis when using the RemoteViewer
- Possibility to send the same file twice when using the RemoteViewer
- Optional username field on the guest side when using the RemoteViewer
- Flip Camera action on the SPLIT usecases
- Possibility to allow the account param if needed
- Possibility to enable hold dialog when a call is stablished
- Multiple troubleshoot URLs for the Tester usecase
- Possibility to enable a waiting video before the remote video is accepted by the agent (Webclient)
- Possibility to send the Tester results via HTTP request
- Redirect param to the Tester usecase
### Updated
- Updated VideoRTC.js library (v3.4.0)
- Updated the webrtc-gateway internal core
- Remote video is now resized when remote peer is screensharing
- Improved design of the Tester usecase
- Improved design of the Webclient usecase by adding FAB
### Fixed
- Fixed a bug that opened the advice URL when the user clicked on the Save button
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

