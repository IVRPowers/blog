+++
categories = ["updates"]
date = "2023-11-07T12:00:00+02:00"
description = "Release Note"
draft = false
tags = ["webacd","acd","ivrpowers","changelog"]
title = "Web ACD v1.15.0"
image = "/postimages/updates/ivrpowers-posts-01.103.jpeg"
featured = false
+++

# Release Note

We are pleased to announce that our new **Web ACD v1.15.0** has been released for suitable production services. This new version includes a specific security fix for data channel recommendations with a hotfix 1.15.1 included for all deployments as well.  All users with previous maintained versions can upgrade today. Please contact our support!

# ChangeLog

Version 1.15.0:

```bash
### [1.15.0] - 2023-06-14

### Added
- WebSocket request to obtain a list of all users in the system for admins and supervisors
- Parameter maxAttentionTime to a realtime queue
- Option to show offline users in the dashboard
- Added Copy and QRCode actions for the selected trigger
- Sounds when dialpad keys are pressed
- Added both user and name fixed vars for applications and queue triggers
- Home section to the menu
- Latest Calls view
- Added new languages (en_CA, en_GB, es_AR, es_CL, es_CO, es_CR, es_EC, es_PA, es_PE, es_PR, pt_BR, pt_PT) to the platform

### Changed
- The send-announce WebSocket action takes now a *to* parameter to allow directing the message to specific agents
- Allowed the : character as part of the report query
- The username can only contain letters, numbers or periods

### Fixed
- Correctly limit the report preview of queries with the LIMIT word in them
- Moved scroll from <html> to the main container
- Dashboard items are now aligned via stretch

### [1.15.1] - 2023-11-07

### Fixed
- Fixed blank page issue when closing the current trigger
- Fixed duration rendering bug resolved by replacing date-fns with direct Math operations

```

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications

