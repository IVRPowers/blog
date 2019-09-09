+++
categories = ["technologies"]
date = "2019-09-08T12:00:00+01:00"
description = "Text-to-Speech"
draft = false
tags = ["text-to-speech","ivr","tts","speech","api","google", "aws", "microsoft"]
title = "TTS-API connectors updated!"
image = "/postimages/technologies/post-connector-tts.004.jpeg"

+++

![Amazon TTS](/postimages/technologies/post-connector-tts.004.jpeg)
---------
###### Image source: Interactive Powers

#	Interactive Powers introduces 45+ Languages & 300+ additional Text-to-Speech voices with Amazon, Google and Microsoft Cloud TTS-API Integration.
---

##  Natural Language over the Phone...

All of you know that cognitive services are growing this days, and that's why today we're going to talk about a brand-new API, "Text to speech".  This API can convert text into natural voice in just a few seconds even less. There are a lot of Cloud Speech APIs for Text To Speech, but we will focus on the Cloud Giants: [Google Cloud](https://cloud.google.com/), [Microsoft Azure](https://azure.microsoft.com/) and [Amazon Web Services](https://aws.amazon.com/).

We are excited to announce that **Interactive Powers is adding more than 300 voices, 45 languages, and new APIs to give developers more control over synthesized speech output in applications** that need text-to-speech voice. With Amazon Polly, Google Cloud, Microsoft Azure developers now have control over the volume, pitch, rate, and pronunciation of the voices that interact with their phone users.

##  What is really important?

Text-to-Speech has been an important tool in developer’s armory. It allows developers to create interactive voice applications by generating speech dynamically, rather than playing static, pre-recorded media files. Plivo platform supports this capability through our [VoiceXML IVR](https://www.ivrpowers.com/voicexml/) platforms  < prompt > VoiceXML. Today, with normal text-to-speech, developers can only choose from a basic male or female voice in a subset of languages, without pauses, tonal modulations or other qualities that a natural speech possesses. 

* HTTP-TTS connector for [Amazon Polly TTS]()
* HTTP-TTS connector for [Google Cloud TTS]()
* HTTP-TTS connector for [Microsoft Azure TTS]()

# Integrating Text-to-Speech in your Application

To synthesize  speech on our IVR, simply specify one of the many voices in attributes of VoiceXML < prompt >. Note that Cloud Speech API voices must be namespaced for this engine.

For example:

~~~xml
<?xml version="1.0"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="en-US">
   <property name="promptvoice" value="my-voice"/>
   <form>
       <block>
           <prompt>Hello World! This is my voice...</prompt>
       </block>
   </form>
</vxml>
~~~

To learn more about how IVR solutions, please contact us at our [website](htttps://www.ivrpowers.com/)

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications


