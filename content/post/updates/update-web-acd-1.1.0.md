+++
categories = ["updates"]
date = "2020-10-28T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webacd","acd","ivrpowers","changelog"]
title = "Web ACD v1.1.0"
image = "/postimages/updates/ivrpowers-posts-01.103.jpeg"
featured = false
+++

# Release Note

We are pleased to announce that our new **Web ACD v1.1.0** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 1.1.0:

```bash
## [1.0.0] - 2020-10-14
​
### First release
​
## [1.0.1] - 2020-10-15
​
### Fixed
​
- Normalized the CallerID of the user to remove accents to avoid crashes on calls
​
## [1.1.0] - 2020-10-28
​
### Added
​
- Basic Report section with a single CDR report
- Worker to separate the report generation from the main thread
- Preventing sleep mode for touch devices
- DTMF tones can now be sent from the Phone
- Enabled interuser transferences with triggers from queue
- Basic Agent state management (CONNECTED | PAUSED)
​
### Changed
​
- The member addition to a queue is now bound to the action of adding an agent to a queue
- The member deletion from a queue is now bound to the action of deleting an agent from a queue
​
### Fixed
​
- Audio issue when playing on Safari browsers
- Custom application when configuring the flow of a route
- The autopause option of a queue now accepts **all** as a value
​
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

