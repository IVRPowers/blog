+++
categories = ["updates"]
date = "2017-06-16T00:20:05+02:00"
description = "Release Note"
draft = false
tags = ["rtmp","rtc", "ivrpowers"]
title = "Video RTC (RTMP) v1.2"
image = "/postimages/updates/ivrpowers-posts-01.087.jpeg"
featured = true
+++

# Release Note

We are pleased to announce that our new **Video RTC (Gateway RTMP) v1.2.0** has been released for suitable production services. This new version includes a lot of improvements and new features. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 1.2.0:

```bash
## [1.2.0] - 2017-01-18
### Added
 - GET parameters to customize some variables of the client and agent flashphones {
    Action: parameter=[possible values] (default)
    ----------------------------------------------
    Enable video: video=[true|false] (false)
    Video quality: quality=[1...100] (100)
    Bandwidth: bandwidth=[0...] (256000)
    FPS: fps=[5|7|10|15|20|25] (25)
    Auto call: autoCall=[true|false] (false)
    Video size: size=[qcif,cif,hd] (qcif)
 }
 - HD option to the Vide Size Options in the Playground
 - Update script
 - Visual colored feedback of the different scripts steps
 - SplitSessions dialplan application to obtain the current session usage

### Changed
 - The dialplan is not longer binded to a default split name (demo), now its dynamic
 - The dialplan contains now an example of the SplitSessions usage
 - Minor improvements in the app_split core

### Fixed
 - In the playground, the Yes options had a bad value (liue instead of true)
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications
