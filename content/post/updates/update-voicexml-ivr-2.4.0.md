+++
categories = ["updates"]
date = "2021-07-19T00:20:00+02:00"
description = "Release Note"
draft = false
tags = ["voicexml","ivr", "ivrpowers","changelog"]
title = "Smart IVR v2.4"
image = "/postimages/updates/ivrpowers-posts-01.102.jpeg"
featured = true

+++

# Release Note

We are pleased to announce that our new **Smart IVR 2.4.0** has been released for suitable production services. This new version includes a lot of improvements and new features. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 2.4:

```bash
## [2.4.0] - 04-03-2021
### Added
- Added res_srtp Asterisk module to support RTP over SSL
- Added <context> support for the <nlu> recognition
### Changed
- General internal updates to the NLU logic
### Fixed
- Fixed a couple of scenarios where the NLU result was not properly detected
- Properly cleaned the CompletionQueue of the GRPC NLU Google session by performing the needed tasks explicitly- Memory leak on the interpreter engine
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications
