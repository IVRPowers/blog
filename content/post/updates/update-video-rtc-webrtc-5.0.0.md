+++
categories = ["updates"]
date = "2022-01-13T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webrtc","rtc","ivrpowers","changelog"]
title = "Video RTC (WebRTC) v5.0.0"
image = "/postimages/updates/ivrpowers-posts-01.088.jpeg"
featured = true
+++

# Release Note

We are pleased to announce that our new **Video RTC (Gateway WebRTC) v5.0.0** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 5.0.0:

```bash
## [5.0.0] - 2022-01-12
### Added
- New configuration params to the Tester usecase: autoStart, autoTroubleshoot and showRedirectBtnOnlyIfTestOk
- Added a way for the Tester to know which checks are necessary to display the Next button
- Advice feature to the SPLIT Agent usecase
- Possibility in the Webclient to differentiate when a call in queue or on hold
- Possibility to download chat history from the SPLIT Agent usecase
- Flip Camera action on both the Videocall and RemoteViewer usecases
- Possibility to configure webpage title and favicon by theme
- Possibility to setup RemoteViewer without ScreenSharing or Audio
- Option to configure an endpoint to send snapshots via URL request from the SplitAgent
- Added a way to apply different CSS rules depending on the theme name
- Webclient can now be configured in escalating mode

### Changed
- OS System required has gone up to Debian 11
- New structure of the web resources after a build
- Added camera check before starting SplitAgent plus moved auto recording trigger from onAcceptedVideo to onJoined event

### Updated
- Updated VideoRTC.js library (v4.0.0)
- Updated the webrtc-gateway internal core
- Updated Asterisk release version to v16.20.0
- Updated PHP version to v8.0

### Fixed
- Fixed hold-video visibility on the Webclient: It is also rendered when the agent mutes the video
- Fixed a race condition in the Webclient between the onHangup and onVideoClosed events that was preventing correct urlClose redirections
- Added a check to prevent JS errors if no fabs are configured
- Fixed the detection of the local user screenshare stream when using the RemoteViewer
- Fixed geoposition feature by waiting until the location data is available before starting a call
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

