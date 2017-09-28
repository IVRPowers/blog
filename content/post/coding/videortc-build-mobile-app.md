+++
categories = ["coding"]
date = "2017-09-11T10:45:24+02:00"
description = "Coding"
draft = false
tags = ["videocall","code","mobileapp","videortc"]
title = "How to Build a Mobile Video Application (WebRTC)"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++


![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons


> ###### Warning: Some of the codes are not correctly displayed in browsers with the Chrome 61 version. To view them properly, use another browser.


In this post we will show you how to build a video call service in your mobile by using the [Ionic Framework 2](http://ionicframework.com/) and [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).


## Step 1: Setting up the basic structure

Firstly, you need to install a project Ionic in your system. If you don’t have it, you can download and follow the official guide from the Ionic Framework 2 web site.

After it, the library [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/) must be included in your project. It requires to copy the library inside the folder **node_modules** of your project. Then, with the command, the dependencies must be installed inside folder videoRTC using **npm install.**

To import our library into the project, we add the following text in the file  *.ts:
	
~~~typescript
import videortc from 'videortc/src/core';
~~~

Next, we have to establish the connection to the desired video server, following these steps: 

* We define a new variable inside our class, with the data of the server.
* In our app’s constructor we initialize the new variable with the class VideoRTC. In the class VideoRTC, you should introduce the variables that have been previously created.

~~~typescript
export class My_App {
  
   public my_videogateway: any = null;
   server:any  = ["https://example.com:HTTPS_PORT/webrtc-gateway"];
   iceServers:any  = [ ];
   debugLevel:any = “error”;

   constructor(public navCtrl: NavController) {
       this.my_videogateway = new VideoRTC(this.server, this.iceServers, this.debugLevel);
   }
}
~~~

After connecting with the video gateway server, you must copy and paste the following Type Script code in your development outside of constructor. It is the basic structure to start designing your videocall service with Ionic:

~~~typescript
this.my_videogateway.connect().then( useCases => {
   this.useCases = useCases;
   let onEvents = {
       onAccepted:(userName) => {
           //It is executed when the call is accepted by a user;
       },
       onCalling:(userName) => {
           //It is executed when It start calling a user.
       },
       onDataReceived:(type, data, filename,userName) => {
           //It executes when information is received by the data channel.
       },
       onGotPeers:(list) => {
           //It executes when the server responds to the request of .getPeers ();
       },
       onHangUp:(userName, reason) => {
           //It is executed when a call is hung. (Decline)
       },
       onIncomingCall:(userName) => {
           //It is executed when there is an incoming call.
       },
       onRegistered: (userName, isRegistered) => {
           //It is executed when the server responds to the action.register () method;
       },
       onSetCall:() => {
           //Set
       }
   };
   var options = { //Optional
       dataChannel: {
           dataEnabled: true,
           allowedTypes: ['application/x-chat', 'text-plain', 'application/pdf']
       }
   };
   let domElements = {
       //HTML element where the video will be hosted.
       videos: document.getElementById(‘videos')
   };
   useCases.videoCall(onEvents, domElements,options)
       .then((action) => {
           // Use Case has been atacched succesfully
           this.actions = action;
           action.register(this.user);
           this.getListPeers();
       })
       .catch((cause) => {
           // Error attaching the Use Case
           console.log("Error Attach " + cause );
       })
})
.catch( cause => {

})
~~~

## Step 2: Registering users

We already have the basic structure to personalize the application. In the following steps, we will add the logic that allows register and call between two users.

* action.register(); → We should add our name in the method or the user identification that it is registered in the videocall.

For instance:

~~~typescript
this.action.register(‘Tom’);  
~~~

Once the call has been registered, user ‘Tom’ can call another user. You have to insert it in a code block, so that you can see it within onRegistered.

* **action.call();** → We must also include in the following method the name of the receiver.

For instance:

~~~typescript
this.action.call(‘Jack’).
~~~

## Step 3: How to accept the videocall

Finally, we must follow the procedure that allows to accept the call. Here, there are two different options. We can either directly include ‘action.call()’ in the object onIncomingCall, so the call is automatically accepted, or you can design your own logic using Ionic components like for example a confirmation button.

You can see more information about the components at [Ionic Framework 2](http://ionicframework.com/docs/components/#alert-confirm).

After the explained process, and by adding some CSS style, you can shape the design of the application.

## Step 4: Running the service and peers...

Open your app mobile and start video calling between two peers. Remember, this demo works properly with the WebRTC communication through our [API Framework](http://blog.ivrpowers.com/post/products/video-rtc-api-framework/) / [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/) resources. Please, contact our sales for any project or more information. 

###	Peer 1 (Tom) and Peer 2 (Jack)

![videortc-mobile-tomandjack](/postimages/coding/mobile-tomandjack.png)

Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
 
 