+++
categories = ["technologies"]
date = "2019-09-03T12:00:00+01:00"
description = "Text-to-Speech"
draft = true
tags = ["text-to-speech","ivr","tts","speech"]
title = "Google TTS connector"
image = "/postimages/technologies/google-tts.002.jpeg"

+++

![Google Cloud TTS](/postimages/technologies/google-tts.001.jpeg)
---------
###### Image source: Google Speech API

# New Google Text-to-Speech connector update!

##	About Google...

Google is one of the biggest enterprises in the world, so its API does not fall short. There are lots of features that are worth of mention, but we don’t have that time so, here are some of main features we consider:

* Google has over 180 voices across 30+ languages and variants.
* WaveNet is a new Neural technology that provides better natural voices.
* Any device or application support with REST or gRPC request.

To understand all of previous elements you can read the Google documentation. It is a relatively new technology, so it is not perfect nor a disaster. Some of the main languages are not yet enough developed like Spanish, that only count with the standard voice meanwhile English has 32 voices (standard and WaveNet).

* Over 180 voices across 30+ languages.
* WaveNet voices which are very similar to human voices.
* Great documentation, very simple and clear.

## How to Start... with Google TTS

###	Step 0: System Requirements

You may check first you have all of this:

* **Apache Web Server** installed with **PHP 7** and at least the curl and the mbstring extension.
* **ffmpeg** binary program installed (open scource).
* **Google Cloud** account.

###	Step 1: Installation

Unzip the TTS Connector file for Google and deploy:

1. Download the .zip file with the TTS from our downloads page (**google-tts-connector.zip**)
2. Unzip the file into the web server.
3. Log into your Google Cloud Platform account.
4. Go to API & Services -> Credentials.
5. Hit the Create credentials button and then Service Account Key.
6. Download the JSON file.

###	Step 2: Configuration

Setup properly your Google Cloud account in the **config.php** file:

1. Open the file **config.php** that lives in the folder created when unzipping the downloaded file.
2. Change $credentials with the path where the key.json file is.
3. Save the **config.php**  file, and that's all folks!

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

~~~javascript
<?xml version="1.0"?>
<vxml version="2.1" xmlns="http://www.w3.org/2001/vxml" xml:lang="en-US">
   <property name="promptvoice" value="Justin"/>
   <form>
       <block>
           <prompt>Hello World! I am the Google Voice</prompt>
       </block>
   </form>
</vxml>
~~~

To learn more about how IVR solutions, please contact us at our [website](htttps://www.ivrpowers.com/)

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications


