+++
categories = ["updates"]
date = "2021-11-29T00:20:00+02:00"
description = "Release Note"
draft = false
tags = ["voicexml","ivr", "ivrpowers","changelog"]
title = "Smart IVR v2.5"
image = "/postimages/updates/ivrpowers-posts-01.102.jpeg"
featured = true

+++

# Release Note

We are pleased to announce that our new **Smart IVR 2.5.0** has been released for suitable production services. This new version includes a lot of improvements and new features. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 2.5:

```bash
## [2.5.0] - 29-11-2021
### Added
- Support for recording the NLU user voice and retrieve its contents
- Max duration option for the NLU interaction
- PJSIP support

### Changed
- Improved the NLU with Google for phrases where the user takes breaks between words
- Improved NLU session cleanup
- Improved the "voicexml hangup session" Asterisk command
- Improved the output of the "voicexml show nlu" Asterisk command
- Improved the behavior of the Asterisk module for the cases where the connection with the message queue is lost during a long time

### Fixed
- The indexing of the output for the command "voicexml show statistics"
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications
