+++
categories = ["updates"]
date = "2017-06-19T00:20:05+02:00"
description = "Release Note"
draft = true
tags = ["webrtc","rtc", "ivrpowers"]
title = "Video RTC (WebRTC) v2.1"
image = "/postimages/updates/ivrpowers-posts-01.088.jpeg"
weight = 64
featured = true
+++

# Release Note

We are pleased to announce that our new **Video RTC (Gateway WebRTC) v2.1.0** has been released for suitable production services. This new version includes a lot of improvements and new features. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 2.1.0:
```bash
## [2.1.0] - 2017-04-17
### Added
- Added Snapshot feature in the Split Agent usecase
- VideoGateway notifies to participants when a Split session is finished
- Added Autoclose feature in the Split Agent usecase
- Added `split_screen_bitrate` in the Split configuration file
- Added `videorate` and `screenrate` parameters in the `call_split` request
- Added Quality selector in the Webclient usecase
- Added sound notification when a message is received in the Split Agent usecase
- Added sound notificator handle (Mute/Unmute) in LiveChat mode
- Added visual notificacion when a file is sent in the Split Agent usecase
- Added icon that identifies the file type sent/received
- Added Drop feature for File Sharing (Agent -> Client)
- Added Emoji feature in LiveChat (Webclient and Split Agent)
- Added FullScreen mode in ScreenSharing (Webclient)
- Added SplitAgent configuration feature via Flavour (Autoclose, Emoji...)

### Changed
- Updated VideoRTC.js library (v1.1.0)
- Dialog boxes has now vertical alignment and smaller width value in the WebClient and Split Agent

### Fixed
- Fixed resizing of Screensharing feature in the WebClient and Split Agent
- Fixed minimizer bar in the Videomail and Videoplayer usecases
- Fixed recording feature with the same name/id in the Videomail usecase
```