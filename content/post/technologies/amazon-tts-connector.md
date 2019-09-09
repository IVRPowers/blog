+++
categories = ["technologies"]
date = "2019-09-03T12:00:00+01:00"
description = "Text-to-Speech"
draft = false
tags = ["text-to-speech","ivr","tts","speech","api","amazon", "aws"]
title = "Amazon Polly TTS connector"
image = "/postimages/technologies/post-connector-tts.001.jpeg"

+++

![Amazon Polly TTS](/postimages/technologies/post-connector-tts.001.jpeg)
---------
###### Image source: Interactive Powers

#	Interactive Powers introduces 27 Languages & 60+ additional Text-to-Speech voices with Amazon Polly Integration
---

##	About Amazon...

Amazon Polly is a Text-to-Speech (TTS) service that uses advanced deep learning technologies to synthesize speech that sounds like a human voice. It's part of the voice of Alexa and can do much more for your business too.

* Amazon has arround 60 voices across 30 languages and variants.
* Amazon Polly offers Neural Text-to-Speech (NTTS) voices through Machine Learning approach.
* Any device or application support with REST request.

To see all of them you can watch AWS documentation.

It is a relatively advanced technology, it sounds great for many kind of projects. Some of the main languages are not yet enough developed with Neural TTS technology to provide any kind of voices.

* Over 60 voices across 30 languages.
* NTTS Newscaster Style voices which are very similar to human voices.
* Great documentation, very clear approach and scalability

## How to start with Amazon Polly TTS

###	Step 0: System Requirements

You may check first you have all of this:

* **Apache Web Server** installed with **PHP 7** and at least the curl and mbstring PHP extension installed.
* **ffmpeg** binary program installed.
* **Amazon AWS** account.
* **Amazon IAM User** with *AmazonPollyReadOnlyAccess* attached policy. 

###	Step 1: Installation

Unzip the TTS Connector file for Amazon Polly and deploy:

1. Download the .zip file with the TTS from our downloads page (**amazon-polly-tts-connector.zip**)
2. Unzip the file into the web server.

###	Step 2: Configuration

Setup properly your AWS Amazon Poly account in the config.php file:

1. Open the file **config.php** that lives in the folder created when unzipping the downloaded file.
2. Change  **AMAZON_REGION** placeholder for the correct region for your IAM user.
3. Change  **AMAZON_USER_KEY** placeholder for the Access Key ID.
4. Change  **AMAZON_USER_SECRET** placeholder for the Secret Access Key.
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
   <property name="promptvoice" value="Justin"/>
   <form>
       <block>
           <prompt>Hello World! I am the Amazon Polly Voice.</prompt>
       </block>
   </form>
</vxml>
~~~

To learn more about how IVR solutions, please contact us at our [website](https://www.ivrpowers.com/)

---
[Interactive Powers](http://www.ivrpowers.com/) - Streamline your business communications


