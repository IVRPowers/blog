+++
categories = ["customerengagement"]
date = "2020-02-29T19:00:00+02:00"
description = "Questions & Answers"
draft = false
tags = ["ivr","voicebot","custexp","AI"]
title = "Connecting Phone Calls to DialogFlow"
image = "/postimages/customerengagement/slides-2020-03.005.jpeg"
+++

![DialogFlow Phone Calls](/postimages/customerengagement/slides-2020-03.005.jpeg)
-----------
###### Photo source: Interactive Powers. Creative Commons

#	What are main questions about connecting a DialogFlow agent to a telephony system?
---

It’s important to get some important differences between the **Google Phone Gateway** and our **DialogFlow Gateway** powered by a [Smart IVR](https://www.ivrpowers.com/voicexml/) platform.

###	Can I get a Number (PSTN) from any country?

* 🟢 **Phone Gateway** =  Yes, select a PSTN Number in the list of each available country.
* 🟢 **DialogFlow Gateway** = Yes, connect your own DDI Number or any IP PBX extensions.

###	Can I connect a 800 Toll Free Number?

* 🟠 **Phone Gateway** = No, your have to forward your own 800 Toll Free.
* 🟢 **DialogFlow Gateway**	= Yes, register and connect a 800 Toll Free direclty.

###	Can I make Call Transfers to any number or extension?

* 🔴 **Phone Gateway** =  No, you cannot make call transfers to PSTN numbers or extensions.
* 🟢 **DialogFlow Gateway** = Yes, transfer to any number or extension from the trunk connected.

###	Can I connect a SIP Trunk from a Carrier or my own PBX?

* 🔴 **Phone Gateway** = No, this option is not available.
* 🟢 **DialogFlow Gateway**	= Yes, connect your own SIP Trunk and make outbound calls.

###	Can I manage Call Control functions?

* 🟠 **Phone Gateway** =  No, it's limited to the PSTN number provided.
* 🟢 **DialogFlow Gateway**	=  Yes, create your own CC functions connected to IVR scripts.

##	Conclusion

###	Google Phone Gateway

[Phone Gateway](https://cloud.google.com/dialogflow/docs/integrations/phone-gateway) is the Google solution enabling a PSTN access to a [DialogFlow](https://dialogflow.com/) project, it still very limited for any company to use it in a real business case. Currently, it's an interesing quick demo service mainly to test your Agent with a phone call.

###	DialogFlow Gateway

[DialogFlow Gateway](/post/customerengagement/how-to-connect-dialogflow-to-your-pbx/) solution has been designed for businesses, enabling a complete SIP connectivity with your PBX and telephony systems . You can connect easily any kind of inbound or outbound call thanks to [Smart IVR](https://www.ivrpowers.com/voicexml/).

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications


