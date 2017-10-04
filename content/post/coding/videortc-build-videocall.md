+++
categories = ["coding"]
date = "2017-09-01T11:59:22+02:00"
description = "Coding"
draft = false
tags = ["videocall","code","webrtc","videortc","rtc"]
title = "How to Build a Videocall Service (WebRTC)"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++

![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons


In this post we will show you how to build your videocall service based on HTML5 technology by using our API Framework with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

## Step 1: Setting up the basic structure

Firstly, you will need to include dependency within your project or web page:

~~~html
<script type="text/javascript" src="videortc.js"></script>
~~~

You can insert a minimized version if you prefer so:

~~~html
<script type="text/javascript" src="videortc.min.js"></script>
~~~

Next, we connect with the video gateway server:

~~~javascript
var server = ["https://example.com:HTTPS_PORT/webrtc-gateway"];
var iceServers = [];
var debugLevel = “error”;

var myVideoApp = new VideoRTC(server, iceServers, debugLevel);
~~~

After connecting with the server, you must copy and paste the following JavaScript code in your development. It is the basic structure to start designing your videocall service:

~~~javascript
var connection = myVideoApp.connect().then(function(usecases) {	
var onEvents = {
    onAccepted: function(userName) {
      //It is executed when the call is accepted by a user; 
    },
    onCalling: function(userName) {
         //It is executed when I start calling a user.
    },
    onDataReceived: function(type, data, filename) {
        // Data received
        if(type === 'application/x-chat') { }
        if(type === 'text/plain') { }
        if(type === 'application/pdf') { }

     //It is executed when information is received by the data channel. 
    },
    onGotPeers: function(list) {
         //It executes when the server responds to the request of .getPeers();
    },
    onHangUp: function(userName, reason) {
         //It is executed when a call is decline.
    },
    onIncomingCall: function(userName) {
     //It is executed when there is an incoming call.
    },
    onRegistered: function(userName, isRegistered) {
        //It is executed when the server responds to the action.register () method; 
    }
};
 
var domElements = {
    videos: document.getElementById('videos')
   //HTML element where the video will be hosted.
};
 
var options = { // Optional
     dataChannel: {
         dataEnabled: true,
         allowedTypes: ['application/x-chat', 'text-plain', 'application/pdf']
     }
}
usecases.videoCall(onEvents, domElements, options)
    .then(function(action) {
         // Use Case has been atacched succesfully
        action.register(); 
 
    })
    .catch(function(cause) {
        // Error attaching the Use Case
        console.log("Error Attach " + cause );
    })
 
}) .catch( function(cause) { console.log("Error connecting with the VideoGateway");  })
~~~

## Step 2: Registering users

We already have the basic structure to personalize the application. In the following steps, we will add the logic that allows register and call between two users.

* **action.register();** → We should add our name in the method or the user identification that it is registered in the videocall.

For instance:

~~~javascript
action.register(‘Tom’); 
~~~

Once the call has been registered, user ‘Tom’ can call another user. You have to insert it in a code block, so that you can see it within onRegistered.

* **action.call();** → We must also include in the following method the name of the receiver.

For instance:

~~~javascript
action.call(‘Jack’).
~~~

## Step 3: How to accept the videocall

Finally, we must follow the procedure that allows to accept the call. Here, there are two different options. We can either directly include ‘action.call()’ in the object onIncomingCall, so the call is automatically accepted, or you can design your own logic. In this way onIncomingCall should click a button whenever a videocall is received.

After the explained process, and by adding some CSS style, you can shape the design of the application.

## Step 4: Running the service and peers...

Open your WebRTC compliant web browser (Chrome, Firefox, Opera...) and start video calling between two peers...  Remember, this demo works properly with the WebRTC communication through our API Framework / VideoRTC.js resources. Please, contact our sales for any project or more information.

###	Peer 1: Tom

![videortc-chrome-tom](/postimages/coding/chrome-tom.jpg)

###	Peer 2: Jack

![videortc-chrome-jack](/postimages/coding/chrome-jack.jpg)

Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)

