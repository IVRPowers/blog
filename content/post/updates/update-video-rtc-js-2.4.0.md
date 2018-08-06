+++
categories = ["updates"]
date = "2018-08-03T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webrtc","rtc", "ivrpowers","changelog"]
title = "VideoRTC.js (API) v2.4.0"
image = "/postimages/updates/ivrpowers-posts-01.101.jpeg"
featured = true
+++

# Release Note

We are pleased to announce that our API Framework for Javascript **VideoRTC.js v2.4.0** has been released for suitable for Web Developments and Mobile SDK . All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 2.1.0 · 2.4.0:

```bash
## [2.1.0] - 2018-01-16
### Added
- Added `videoStream` and `videoEnabled` option parameters in the SplitAgent module
- Added `onReadyLocalAudio`, `onAcceptedData` and `onScreensharingClosed` events in the SplitClient module
- Added `onAcceptedData` and `onReadyLocalStream` events in the SplitAgent module
- Added a mechanism that guarantees the sending of files through the Datachannel
- Added `onFileTransferOk` and `onFileTransferKo` events in the modules that use the Datachannel
- Added `startScreensharing` and `stopScreensharing` actions in the SplitClient module
- Added `notify` method in the following modules: SplitClient and SplitAgent
- Added Safari iOS 11 support in the SplitClient module (Audio mode)
### Changed
- Updated recording mode in the SPLIT modules
### Fixed
- Fixed the use of the debug parameter at library level
## [2.2.0] - 2018-05-15
### Added
- Added Detect module in the library
- Added EchoTest module in the library
- Added ScreenSharing and DataChannel features in the Videoroom module
## [2.2.1] - 2018-06-08
### Fixed
- Fixed compatibility of modules with Firefox60+
### Changed
- Updated `webrtc-adapter` version release to `6.2.1`
## [2.3.0] - 2018-07-02
### Added
- Added SIP module in the library
### Changed
- Updated README notes
## [2.4.0] - 2018-08-02
### Added
- Added possibility to add custom SIP headers in the SplitClient module
- Added `setMode` and `toggleAudioRemote` methods for Scalable SPLIT
- Added `onRemoteStreamReady` event in the Videocall module
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

