+++
categories = ["updates"]
date = "2020-02-03T00:20:00+02:00"
description = "Release Note"
draft = false
tags = ["voicexml","ivr", "ivrpowers","changelog"]
title = "Smart IVR v2.1"
image = "/postimages/updates/ivrpowers-posts-01.102.jpeg"
featured = true

+++

# Release Note

We are pleased to announce that our new **Smart IVR 2.1** has been released for suitable production services. This new version includes a lot of improvements and new features. All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 2.1:

```bash
## [2.1.0] - 03-02-2020
### Added
- Support for the <data> element
- Added noinputtimeout for the <record> element
  
## [2.0.3] - 03-12-2019
### Fixed
- Removed unnecessary error message when making a TTS request through HTTP
- Added verification check for the existance of a cached file before trying to access it to avoid error messages
- Fixed the conversion from interpreter value to JSI double numbers on subdialog return

## [2.0.2] - 22-10-2019
### Changed
- Spidermonkey is compiled now with the JS_THREADSAFE enabled

### Fixed
- A random crash during the GC of the ECMAScript engine due to a bad Request structure
- A random error while generating the cache key for a TTS audio that was making it empty

## [2.0.1] - 28-03-2019
### Changed
- The default wavcodec in the .conf file sample is now pcm

### Fixed
- A random crash during the GC of the ECMAScript engine
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications
