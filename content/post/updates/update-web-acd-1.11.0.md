+++
categories = ["updates"]
date = "2021-09-30T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webacd","acd","ivrpowers","changelog"]
title = "Web ACD v1.11.0"
image = "/postimages/updates/ivrpowers-posts-01.103.jpeg"
featured = false
+++

# Release Note

We are pleased to announce that our new **Web ACD v1.11.0** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 1.11.0:

```bash
## [1.5.0] - 2021-01-28
​
### Added
​
- Auto close functionality for the Queue triggers to select if they must be closed at call end or not
- Administration/Supervision message to the agents
- Custom PHP modules to extend platform functionalities
​
## [1.6.0] - 2021-02-25
​
### Added
​
- Added Spinner to indicate when a HasSIP user is registering to Asterisk
​
### Fixed
​
- Realtime counters where being duplicated on Asterisk server reconnection
- Hidden expiration field in the license display when the license loaded in the platform is permanent
- Fixed autoclose when triggers were closed and opened manually
​
## [1.7.0] - 2021-07-29
​
### Added
​
- Added possibility to display connected time and user status in minutes
​
## [1.8.0] - 2021-08-16
​
### Added
​
- Added possibility of full userfield update in the typify custom trigger
- Added permission system to give supervisor lesser control over the agents
- Added autoanswer feature for SIP users
​
### Changed
​
- A paused user can now change the pause status without unpausing before
​
## [1.8.1] - 2021-08-20
​
### Fixed
​
- The report generation was failing when the same param was used more than once in the query
​
### [1.9.0] - 2021-08-25
​
### Added
​
- Added OS notifications for incoming calls when the webapp is in background
- Beep sound when a call is accepted by using autoanswer feature
​
### [1.10.0] - 2021-09-10
​
### Added
​
- Page for the Agents to check their daily activity statistics
- Added possibility to generate a browser report for SIP users
​
### [1.11.0] - 2021-09-30
​
### Added
​
- Added possibility to fetch call data information by destination in the custom apps
- Added display-capture value in the allow attribute for triggers and apps
​
```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

