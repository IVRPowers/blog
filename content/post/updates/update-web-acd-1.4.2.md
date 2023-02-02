+++
categories = ["updates"]
date = "2020-12-15T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webrtc","rtc","ivrpowers","changelog"]
title = "Web ACD v1.4.2"
image = "/postimages/updates/ivrpowers-posts-01.103.jpeg"
featured = false
+++

# Release Note

We are pleased to announce that our new **Web ACD v1.4.2** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 1.4.2:

```bash
## [1.1.1] - 2020-10-28
​
### Fixed
​
- Last status is only checked and rendered for SIP users
​
## [1.1.2] - 2020-10-28
​
### Fixed
​
- The report directory creation is now done with the proper mode and mask
​
## [1.1.3] - 2020-10-29
​
### Fixed
​
- Remote audio works on Safari by using the `RTCPeerConnection.ontrack` event
- Speaker detection for Safari browser on the requirements section
​
## [1.1.4] - 2020-11-02
​
### Fixed
​
- Realtime websocket conenction was been closed incorrectly if a second user session was opened
​
## [1.2.0] - 2020-11-05
​
### Added
​
- Applications now support specifying a target to open then in a new tab or embedded in the web panel
- Talking status for users
- Custom pauses
- Trunk status for admins
​
### Fixed
​
- Realtime sockets remote IP detection when running behind a proxy
- Agent asignement to queue was not been properly cleaned on user/queue deletion
​
## [1.3.0] - 2020-11-10
​
### Added
​
- Queues stats on the dashboard
- Dialog when the Realtime/SIP socket is disconnected
​
## [1.4.0] - 2020-11-27
​
### Added
​
- Internationalization of the platform (es-ES and en-US)
- Added pausedAt tracking for realtime users
- Pause timer for agents
- Possibility to manage custom reports
- Added a batch of default reports to the system
- Ringing tone when calling between extensions
- Sound at call hangup
​
### Changed
​
- The connectedAt field for the user takes into account the 5 minute grace period for reconnections
- The system information includes now current date and time
- Agents cannot change their status manually if they have active calls
- The statuses displays are now collored when paused and talking
​
## [1.4.1] - 2020-12-03
​
### Fixed
​
- "Deslogear" in Spanish texts changed to "Desconectar"
- User pausedAt was not been sent in the cases where it was paused before desconnecting
​
## [1.4.2] - 2020-12-15
​
### Fixed
​
- The listening of Asterisk events queueparams, queuemember, queuestatuscomplete, queuesummary and queuesummarycomplete are bound to the originator action ID
​
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

