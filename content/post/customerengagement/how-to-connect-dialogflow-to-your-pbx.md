+++
categories = ["customerengagement"]
date = "2020-02-29T18:00:00+02:00"
description = "Conversational AI"
draft = false
tags = ["ivr","voicebot","custexp","AI"]
title = "How to connect DialogFlow to your PBX?"
image = "/postimages/customerengagement/slides-2020-04.006.jpeg"
+++

![Voicebot IVR DialogFlow Gateway](/postimages/customerengagement/slides-diagram-01.005.png)
-----------
###### Photo source: Interactive Powers. Creative Commons

#	Build a Voicebot IVR with DialogFlow for your existing PBX and telephony system.
---

Continuing on our quest of better business communications, both old DTMF menus and *speech direct dialog* are outdated IVR options, we can replace them by the power of a [DialogFlow](https://dialogflow.com/) advanced [Conversational AI](https://blog.ivrpowers.com/post/products/conversational-ivr-applications/) service.  

##	Prerequisities

###	1- Text-to-Speech API account (TTS)

You can connect any TTS according to your language and voice preferences. It makes sense to use different voices than Google Assistant, it’s really better.

💡Amazon Polly or Azure provides more languages and voices.

###	2- Speech Recognition API account (ASR)

You can connect many engines, like Alexa AWS or Azure Speech Recognition, both are good but Google is faster on DialogFlow integration using direct STT processing.

💡Use Google Speech Recognition to speed up your service with DialogFlow direct speech processing.

###	3- Google DialogFlow account and agent (NLU)

DialogFlow is the dialog manager, it will manage all rules, itents and will use AI Machine Learning to improve the conversation itself.

💡Activate Professional for more than…

###	4- Smart IVR subscription account (IVR)

Nothing can work without this, it’s the core engine of the speech integration, the IVR server connects: NLU, TTS, ASR, PBX to get running the whole solution.

💡CPaaS IVR Plus features are required to create advanced phone services with DialogFlow.

###	5- Voicebot Framework (APP)

We provide a Conversational App. Framework to manage a Dialogflow Agent interaction. 

💡You may start from scratch… the dialog is so easy!

###	6- Your PBX or IP Operator (SIP Trunking, DDI Numbering)

Configure a SIP trunk between the IVR server and your PBX or operator.

💡It’s your own PBX, the main condition is to be SIP compliant.

##	Google Phone Gateway vs DialogFlow Gateway

It’s important to get some important differences between the **Google - Phone Gateway** and our **Dialog Gateway** powered by a [Smart IVR](https://www.ivrpowers.com/voicexml) platform.

[Questions & Answers](/post/customerengagement/connecting-phone-calls-to-dialogflow/)

##	How to process

###	Step 1- Setup a DialogFlow Project account.

You need a Google Cloud Project account and an Agent following this process.

###	Step 2- Setup a Smart IVR account.

You need a CPaaS or SaaS account to be activated at EU Store / US Store.

###	Step 3- Setup a SIP Trunk from your PBX to Smart IVR.

Setup a SIP trunk between your PBX and the Smart IVR account, G711 codec recommended.

###	Step 4- Download our Voicebot (Dialog) framework.

We provide a specific application for Smart IVR that manage the main structure to run DialogFlow, this framework is open and you can customize it easily.

###	Step 5- Create Output Actions (#Labels).

You have to create Output action for each #Label inside your Dialogflow rules like:

- Transfer a Call
- Record a Voicemail
- Execute an IVR Script
- Execute a Web Service
- Join an Audio Conference

###	Step 6- Go Live!

That’s all, make a call from your PBX or a number transferred to the Trunk.

##	Common Customer Use Cases

These are very common services you can connect to your PBX like: 

- Call Steering
- Help Desk Support 
- Directory information
- Voice Assistant or Receptionist (***)
- Customer Order Information / Tracking
- Off Line Assistance

##	More…

Of course previous example can content transactions mixed inside the main Conversational AI dialog. If you add company, services, more entities… improved with Machine Learning, you will get a better behavior of the system to customers questions.

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications