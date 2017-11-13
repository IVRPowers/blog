+++
categories = ["coding"]
date = "2017-10-26T10:45:24+02:00"
description = "Coding"
draft = false
tags = ["datachannel","code","videortc","videocall"]
title = "How it Works our Datachannel with VideoRTC.js"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++

![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons



In this post, we will show you how it works with Datachannel using [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/) and how to code quickly a simple service for a specific purpose.

## Introduction

First of all you need to know the modules in which we currently have available the Datachannel: These are the Videocall and the SPLIT. In this example we will use the first one, though the operation would be the same in both.

The first step we must do when launching the module is to configure the options for the desired data types in our application. In this case we will use the following MIME types:
* application/x-chat (Chat message)
* application/x-custom-command (Custom command)

~~~javascript
var options = {
	dataChannel: {
		dataEnabled: true,
		allowedTypes: ['application/x-chat', 'application/x-custom-command']
	}
};
~~~


## Sending a chat message

Here is a small example of the method we use to send a chat message between two peers through the datachannel:
	
~~~javascript
action.sendData(
	'application/x-chat', 
	'Hello Mike!',
	function(cOk) {
		// Success
	},
	function(error) {
		// Error
	}
);
~~~

The first parameter identifies the type of data (MIME type) we are sending through the datachannel and it is very important that the receiver knows this in order to recover it properly.
Therefore, in this case when we receive a message of this kind, we'll print it on the console:

~~~javascript
var onEvents = {
	onDataReceived: function(type, data, filename) {
		if(type === 'application/x-chat') { 
			console.log("Chat message received: " + data);
		}
	}
};
~~~


## Sending a custom command

As you can expect, you can create your own MIME type and treat it the way you want in your own application. The Datachannel allows you to send any data that can be serialized as string.

In the same way that we send a chat message, we can send a command type message (x-custom-command) in the following way:


~~~javascript
var data = {
	id: 23,
	position: {
		latitude: 40.4343941,
		longitude: -3.7079737
	},
	tags: ["Interative Powers", "IntPowers"]
};
action.sendData(
	'application/x-custom-command',
	JSON.stringify(data),
	function(cOk) {
		// Success
	},
	function(error) {
		// Error
	}
);
~~~

In this case, when we receive a message of this kind, we'll do whatever the developer wants.

~~~javascript
var onEvents = {
	onDataReceived: function(type, data, filename) {
		if(type === 'application/x-custom-command') { 
			var dataReceived = JSON.parse(data);
			// TODO: Whatever you want
			console.log("Latitude: " + dataReceived.position.latitude);
			console.log("Longitude: " + dataReceived.position.longitude);
		}

	}
};
~~~


Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
