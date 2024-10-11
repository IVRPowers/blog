+++
categories = ["updates"]
date = "2024-07-04T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webrtc","rtc","ivrpowers","changelog"]
title = "Video RTC (WebRTC) v6.0.0"
image = "/postimages/updates/ivrpowers-posts-01.088.jpeg"
featured = true
+++

# Release Note

We are pleased to announce that our new **Video RTC (Gateway WebRTC) v6.0.0** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 6.0.0:

```bash
## [6.0.0] - 2024-07-04

### Added

- Added the `browserEvents` option to the Webclient to notify the parent when it is opened as an iframe: `videortc.hangup` and `videortc.remote.video.joined` events.
- Added a new action button to switch between different remote video sizings in the Webclient.
- Added fullscreen option for remote screen sharing in the Webclient.
- Added a bubble notification over the FAB button to indicate when a chat message is received while the chat is closed in the Webclient.
- Added possibility to configure the default remote video sizing: `cover` or `contain` in the Webclient.
- Added possibility to indicate Room ID and Secret via URL params in the Remote Viewer.
- Added quality option parameter in the Remote Viewer
- Added both frameRate and resolution stream options for all usecases

### Changed

- OS System required has gone up to Debian 12
- Internal libraries used by the platform have been upgraded to align with the new Debian 12 operating system.
- Upgraded VideoRTC.js library to v4.3.0
- Modified autoconnect feature in the RemoteViewer. Now we can separate the activation depending on the role.
- Modified RemoteViewer to have the possibility to enable video only for a side (admin or guest) plus added option to enable/disable livechat.
- Deleted the `moment.js` library from the project.

### Fixed

- Adjusted sizing of the `fab-touchable-box` and fixed fullscreen request for Safari 17.2 and above releases
- Centering remote videos (both camera and screensharing) by using dvh units
- Added patch to enable autoplay when no audio enabled
- Added some checks to verify elements existence before changing their properties and added a mechanism to avoid a re-connection on the guest side.
- Solved iOS orientation records issue
- Added message for the device selectors when there are no options found. In Safari the audio output devices are hidden.
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

