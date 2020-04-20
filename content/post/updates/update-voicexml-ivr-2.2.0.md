+++
categories = ["updates"]
date = "2020-04-10T00:20:00+02:00"
description = "Release Note"
draft = false
tags = ["voicexml","ivr", "ivrpowers","changelog"]
title = "Smart IVR v2.2"
image = "/postimages/updates/ivrpowers-posts-01.102.jpeg"
featured = true

+++

# Release Note

We are pleased to announce that our new **Smart IVR 2.2.1** has been released for suitable production services. This new version includes a lot of improvements and new features. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 2.2:

```bash
## [2.2.1] - 10-04-2020
### Fixed
- The resizing of the history of recordings files was sometimes crashing the Asterisk.

## [2.2.0] - 30-03-2020
### Added
- New VoiceXML element <nlu> with support for Google GRPC Speech API
- New Asterisk command to display current nlu sessions

### Changed
- Project build now with c++11 version
- Accounts information is now only loaded & displayed if the license loaded successfully

## [2.1.1] - 24-02-2020
### Changed
- Imrpoved error message on the core .so module when the new session can not be opened due to an interpreter error

### Fixed
- Memory leak on the interpreter engine
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications
