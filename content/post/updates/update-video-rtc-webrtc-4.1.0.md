+++
categories = ["updates"]
date = "2019-10-21T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webrtc","rtc","ivrpowers","changelog"]
title = "Video RTC (WebRTC) v4.1.0"
image = "/postimages/updates/ivrpowers-posts-01.088.jpeg"
featured = true
+++

# Release Note

We are pleased to announce that our new **Video RTC (Gateway WebRTC) v4.1.0** has been released for suitable production services. This new version includes a hot fix for Firefox Web Browsers. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 4.1.0:

```bash
## [4.1.0] - 2019-10-21
### Added
- Added support for Safari >= 12.1
- Added possibility to choose the default quality of the Webclient through theme configuration
- Added autocall, autoclose and hangup button in the Escalating
- Added a new config param in the Webclient and Escalating usecases to redirect when a call ends (e.g: survey purposes)
- Added new GET params in the VideoPlayer: splitid, recid and mailid
- Added possibility to bind the Dialpad using the keyboard (Webclient)
- Added showId option in the Escalating usecase

### Changed
- Enabled Safari in the Tester configuration
- Redirect option in the Tester has been disabled by default

### Updated
- Updated VideoRTC.js library (v3.1.0)
- Updated the webrtc-gateway internal core

### Fixed
- Fixed an issue with recordings when transferring a SPLIT video call
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

