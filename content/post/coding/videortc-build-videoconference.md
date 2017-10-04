+++
categories = ["coding"]
date = "2017-10-04T10:45:24+02:00"
description = "Coding"
draft = false
tags = ["videocall","code","videoconference","videortc"]
title = "How to Build your Own Videoconference Service"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++


![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons

> ###### Warning: Some of the codes are not correctly displayed in browsers with the Chrome 61 version. To view them properly, use another browser.


Today we bring you this interesting article on How to build your own videoconference service **based on HTML5 technology by using our API Framework with VideoRTC.js.**


## Step one: Setting up the basic structure

As we have explained in [previous posts,](http://blog.ivrpowers.com/post/coding/videortc-build-videocall/) first of all it is important that you include dependency within your project or web page.

~~~html
<script type="text/javascript" src="videortc.js"></script>
~~~

You can insert a minimized version if you prefer so:

~~~html
<script type="text/javascript" src="videortc.min.js"></script>
~~~

After the paths to the videoRTC library are configured in your *. js file, we connect with the video gateway server:

~~~
var server = ["https://example.com:HTTPS_PORT/webrtc-gateway"];
var iceServers = [];
var debugLevel = “error”;

var myVideoApp = new VideoRTC(server, iceServers, debugLevel);
~~~

After connecting with the server, you must copy and paste the following JavaScript code in your development. It is the basic structure to start designing your videoconference service:

~~~javascript
var myVideoApp = new VideoRTC(server, iceServers, debugLevel);

   var connection = myVideoApp.connect()
       .then(function(usecases) {
           // Use Cases (Classes)

           var onEvents = {
               onCreated: function(id) {
                    // Created
               },
               onJoined: function() {
                    // Joined
               },
               onDestroyed: function() {
                    // Destroyed
               },
               onPeerJoined: function(id, display) {
                    // Peer Joined
               },
               onPeerLeft: function(id, display) {
                    // Peer Left
               }
           };

           var domElements = {

               videos: document.getElementById('videortc-videos')
           };

           var options = {
               stream: {
                   audioEnabled: true,
                   videoEnabled: true,
                   dataEnabled: true,
                   aDeviceId: null,
                   vDeviceId: null,
                   voiceProcessor: false
               }
           };

           usecases.videoRoom(onEvents, domElements, options)
               .then(function(action) {
                   // Use Case has been atacched succesfully

               })
               .catch(function(cause) {
                   // Error attaching the Use Case
                  
               });

       })
       .catch(function(cause) {

       });

});

~~~



## Step 2: Registering users to the videoconference

We already have the basic structure to personalize the application. In the following steps, we will add the data required within the method joinVideoroom() to set the videoroom.

action.joinVideoroom(): -> We should add our name in the method or the user identification , the VideoRoom Id and the Videoroom PIN to Join (Optional). 

For example:

~~~javascript
action.joinVideoroom('Abraham', 14586, 'mypassword');
~~~

In this way, each registered user will be able to enter the videoconference room automatically. The room allows a maximum of six peers.

After you finish this process, you can shape the design of the application by adding some CSS style.

P.S: We recommend you to program a feature so that each user can add their name, and a button to access the room. 

![videoconference user](/postimages/coding/videoconference-ivrpowers.jpeg)

## Step 4: Running the service and peers…

Open your WebRTC compliant web browser (Chrome, Firefox, Opera…) and start video calling between  peers… Remember, this demo works properly with the WebRTC communication through our API Framework / VideoRTC.js resources. Please, contact our [sales for any project or more information.](http://www.ivrpowers.com/) 


Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)



