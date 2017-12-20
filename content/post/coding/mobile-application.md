+++
categories = ["coding"]
date = "2017-12-20T11:09:58+01:00"
description = "Coding"
draft = true
tags = ["videocall","code","mobileapp","videortc"]
title = "How to Build a Mobile Video Application (WebRTC) in-depth"
image = "/postimages/coding/ivrpowers-videortc-features.033.jpeg"

+++


![development](/postimages/coding/ivrpowers-videortc-features.033.jpeg)
------------
###### Photo Source: Interactive Powers, Pexels. Creative Commons
 
Users have asked us about our post on [how to build a video call service in your mobile by using the Ionic Framework 2 and VideoRTC.js.](http://blog.ivrpowers.com/post/coding/videortc-build-mobile-app/)

In this new release we offer you a more detailed explanation of the steps to take, so that you can successfully build your mobile video application.

## Introduction.

From the moment you established a VideoRTC interaction, by connecting with the video gateway, until the call is finished, library’s range of events are executed. This execution is asynchronous, that is, each of the events is activated at a particular moment. It allows developers to use it according to their own code.


Listed below we show you the VideoRTC events:

* **onAccepted:** It is executed when the user accepts the call.
* **onCalling:** It is executed when the user starts the call.
* **onDataReceived:** It executes when information is received by the data channel.
* **onGotPeers:** It executes when the server responds to the request of getListPeers().
* **onHangUp:** It is executed when a call is hung (Decline).
* **onIncomingCall:** It is executed when there is an incoming call.
* **onRegistered:** It is executed when the server responds to the action.register() method.

Events have associated methods. Here they are:

* **acceptCall():** Accept an incoming call.
* **call(userName):** Call to peer registered.
* **closeUsecase():** Close the current UseCase. It's recommended to use it with the disconnect method. 
* **getPeers(filter, order):** Get list of peers registered/incall (Returns an array).
* **hangUp():** Hang up/Decline a call.
* **register(userName):**  Register a peer in the VideoCall Usecase. 
* **sendData(type, data, cOk, cKo, (Optional)):** Sends a message (Chat or File) through the DataChannel.
* **setCall(audio, video, quality):** Configure the call settings as you go along.
* **toggleVideo():** Toggle local Audio stream (Mute/Unmute). 


## Development.

For VideoRTC to work, you must add the basic event structure. We explained it above, but you can also find it in [our blog.](http://blog.ivrpowers.com/post/coding/videortc-build-mobile-app/)

At this point, our app will look like this:

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
 
Next, we add the structure of events, which you can find it [here,](http://blog.ivrpowers.com/post/coding/videortc-build-mobile-app/) and we put it inside a method. Doing so, after the user enters his name, the process will start by pressing a button. However, this is not a mandatory step.

~~~typescript
start() {
    this.my_videogateway.connect().then((useCases) => {

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
                //It is executed when the server responds to the register() method;
                },
                onSetCall:() => {
                //Set config Call
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
            videos: document.getElementById('videos')
        };
        useCases.videoCall(onEvents, domElements,options)
            .then((action) => {
            // Use Case has been atacched succesfully
            })
            .catch((cause) => {
            // Error attaching the Use Case
            })
    })
    .catch((cause) => {
        console.log("Error: " + cause)
    })
}
~~~

## Steps to set up your video conference.

**1) User registration.**

Firstly, user must be registered in the server. You have to add the user name as follows:

~~~typescript
action.register(userName);
~~~

Take into account that a very same user can not be registered twice.


**2) How to obtain registered users’ list to establish a call.**

After this step, the user is also registered in the videogateway server. In order to establish a call, it is necessary to know the registered users. We must use the event onGotPeers and with an array, we read and save the data. Look at the example:

~~~typescript
onGotPeers:(list) => {
    for (var i = 0; i<list.length; i++) {
        this.users.push(list[i])
    }
}
~~~

Then, we use this method to call:

~~~typescript
action.getPeers();
~~~
 
**3) Establishing a call between two users.**

Once we know the list of users, we can call a user using the call () method. We will explain below how you can create a user list in HTML.

~~~typescript
callDoUser(item) {
    this.actions.call(item);
}
~~~

**4) Accepting and rejecting calls.**

In the onIncomingCall you must write the code to incorporate the buttons that will allow you to hang up and accept the call. We recommend you to use alerts included in the very same Ionic code. If so, you should add them in the methods.

~~~typescript
onIncomingCall:(userName) => {
   let confirm = this.alertCtrl.create({
            title: "Incoming Call: " + userName,
            message: 'Do you accept to call?',
            buttons: [
                {
                    text: 'Decline',
                        handler: () => {
                            this.actions.hangUp();
                        }
                },
                {
                    text: 'Accept',
                        handler: () => {
                            this.actions.acceptCall();   
                        }
                }
            ]
        });
    confirm.present();
}
~~~


You can customize a message for the person who makes the call, by using the onCalling method. The code will be executed when calling.

**5) Showing the video.**

When the user accepts the call, the onAccepted event is activated. If you use the same view for all the elements of your app, you must include the code to hide the other elements. In this way, only the video will be displayed.

~~~typescript
onAccepted:(userName) => {
//It is executed when the call is accepted by a user;
    this.video = false;
}
~~~

The video variable refers to the HTML element of the video. This is the Type Script part. 

Next, we explain the HTML elements.

## Start the app.

As we stated above, the code enables to start a call by pressing a button after the user adds his/her name. It is a simple process. We just added the click of the start() method.

~~~typescript
<button ion-button color="dark" padding text-center (click)="start()">
    Get Started
</button>
~~~

## How to get the user list.

Once we have the method in the Type Script code, we add its corresponding function in HTML. 

~~~typescript
<ion-list padding lines>
    <button  ion-button block outline padding text-center (click)="showPeers()">
        It show peers connect to call
    </button>
    <ion-item  padding (click)="callDoUser(item)" *ngFor="let item of users"  >
        <span  *ngIf="item != userName">
            <ion-icon class="color-call" name="call"></ion-icon>
            {{ item }}
        </span>
    </ion-item>
</ion-list>
~~~

Now, we have the list of connected users. It shows all of them, with the exception of the app user.

Note: showPeers() only has the onGotPeers() method call;

## Video element.

We add a container with an identifier where the video will be hosted. You will obtain the list of users, so you can contact them.

~~~typescript
<ion-content [hidden]="video" >
    <ion-item >
        <div id="videos"></div>
    </ion-item>
</ion-content>
~~~

Feel free to reach out if you have any questions or comments bellow or just want to show off what kind of cool stuff you’ve built with [VideoRTC.js](http://blog.ivrpowers.com/post/development/introducing-videortcjs-developers/).

Email: [support@ivrpowers.com](mailto:support@ivrpowers.com) · Twitter: [@ivrpowers](https://twitter.com/ivrpowers)
 · Github: [IVRPowers](https://github.com/ivrpowers)
