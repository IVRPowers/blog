+++
categories = ["coding"]
date = "2017-09-01T11:59:22+02:00"
description = "Coding"
draft = false
tags = ["videocall","code"]
title = "How to Build your Own Videocall Service"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++

![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons


In this post we will show you how to build your videocall service based on HTML5 technology by using [VideoRTC.js](http://blog.ivrpowers.com/post/products/video-rtc-special-extensions/).

### Step 1: Setting up the basic structure

* Firstly, you will need to include dependency within your project or web page:

~~~html
<script type="text/javascript" src="videortc.js"></script>
~~~

You can insert a minimized version if you prefer so:

~~~html
<script type="text/javascript" src="videortc.min.js"></script>
~~~

* Next, we connect with the video server that we want:

~~~javascript
var server = ["https://example.com:HTTPS_PORT/webrtc-gateway"];
var iceServers = [];
var debugLevel = “error”;

var myVideoApp = new VideoRTC(server, iceServers, debugLevel);
~~~

* After connecting with the server, you must copy and paste the following JavaScript code in your command. It is the basic structure to start designing your videocall service:

~~~javascript
var connection = myVideoApp.connect().then(function(usecases) {	
var onEvents = {
    onAccepted: function(userName) {
      //Se ejecuta cuando la llamada es aceptada por un usuario; 
    },
    onCalling: function(userName) {
         //Se ejecuta cuando comienzo a llamar un usuario.
    },
    onDataReceived: function(type, data, filename) {
        // Data received
        if(type === 'application/x-chat') { }
        if(type === 'text/plain') { }
        if(type === 'application/pdf') { }

     //Se ejecuta cuando se recibe información por el canal de datos. 
    },
    onGotPeers: function(list) {
         //Se ejecuta el servidor responde a la petición de .getPeers();
    },
    onHangUp: function(userName, reason) {
         //Se ejecuta cuando se cuelga una llamada.
    },
    onIncomingCall: function(userName) {
     // Se ejecuta cuando hay una llamada entrante.
    },
    onRegistered: function(userName, isRegistered) {
        //Se ejecuta cuando el servidor responde al método  action.register(); 
    }
};
 
var domElements = {
    videos: document.getElementById('videos')
   // Elemento HTMLdonde irá alojado el video.
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

### Step two: Registering users

We already have the basic structure to personalize the application. In the following steps, we will add the logic that allows register and call between two users.

* action.register(); → We should add our name in the method or the user identification that it is registered in the videocall. For instance:

~~~javascript
action.register(‘Tom’); 
~~~

Once the call has been registered, user ‘Tom’ can call another user. You have to insert it in a code block, so that you can see it within onRegistered.

* action.call(); → We must also include in the following method the name of the receiver. For instance:

~~~javascript
action.call(‘Jack’).
~~~

### Step three: How to accept the videocall

* Finally, we must follow the procedure that allows to accept the call. Here, there are two different options. We can either directly include ‘action.call()’ in the object onIncomingCall, so the call is automatically accepted, or you can design your own logic. In this way onIncomingCall should click a button whenever a videocall is received.

* After the explained process, and by adding some CSS style, you can shape the design of the application.


