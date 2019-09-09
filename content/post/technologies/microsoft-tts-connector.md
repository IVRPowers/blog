+++
categories = ["technologies"]
date = "2019-09-03T12:00:00+01:00"
description = "Text-to-Speech"
draft = false
tags = ["text-to-speech","ivr","tts","speech","api","microsoft"]
title = "Microsoft TTS connector"
image = "/postimages/technologies/post-connector-tts.003.jpeg"

+++

![Microsoft Azure TTS](/postimages/technologies/post-connector-tts.003.jpeg)
---------
###### Image source: Interactive Powers

#	Interactive Powers introduces 45 Languages & 75+ additional Text-to-Speech voices with Microsoft Azure TTS Integration
---

##	About Microsoft...

Microsoft like Google provides his own Text To Speech API. It is quite big and here are some of its features:
More than 75 voices over 45 languages.

* Parameters for speed, pitch, volume, pronunciation, and additional pauses
* Custom voice models for developers and enterprises
* Neural Voices technology

For more information, read the Microsoft Documentation. Microsoft Text-To- Speech API is a brand-new technology, so it has pros and cons. The online support is basic and could be improved for developers. Anyway, you can build quickly an REST API with all the information provided by Microsoft.

* Over 75 voices across 45 languages.
* Neural voices that mimic the human voice almost perfectly.
* Each language at least have 2 different type of voice where you can choose.

## How to start with Microsoft Azure TTS

###	Step 0: System Requirements

You may check first you have all of this:

* **Apache Web Server** installed with **PHP 7** and at least the curl and mbstring PHP extension installed.
* **ffmpeg** binary program installed.
* **Microsoft Azure** account.
* **Speech resource** created. 

###	Step 1: Installation

Unzip the TTS Connector file for Microsoft Azure and deploy:

1. Download the .zip file with the TTS from our downloads page (**microsoft-tts-connector.zip**)
2. Unzip the file into the web server.
3. Log into your Microsoft Azure account and go to the portal.
4. Go to the Speech resource created.
5. In Resource Management you can find a label call ‘key’, there are two keys for the API.

###	Step 2: Configuration

Setup properly your Microsoft account in the config.php file:

1. Open the file **config.php** that lives in the folder created when unzipping the downloaded file.
2. Change  **PRIVATE_KEY** with one of your own keys.
3. Change  **APPLICATION_NAME** with the name of the Speech resource.
5. Save the **config.php**  file, and that's all folks!

###	Step 3: Ckecking the Instalation

You can check that every is in place and running with our test web service:

1. Browse to the file **index.php** through the web server.
2. Try the TTS selecting a Language and a Voice and hitting the *Send* button.

~~~text
Engine =
Language = 
Voice =
Format =
Internal Format =
Codec =
~~~

###	Step 4: Start your first VoiceXML service

Start coding your first VoiceXML script setting the right voice and language like this:

~~~xml
<?xml version="1.0"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="en-US">
   <property name="promptvoice" value="Jessa"/>
   <form>
       <block>
           <prompt>Hello World! I am the Microsoft Azure Voice.</prompt>
       </block>
   </form>
</vxml>
~~~

To learn more about how IVR solutions, please contact us at our [website](htttps://www.ivrpowers.com/)

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications


