# AutoEye (iOS App Project) 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)


##Submission Info
# Project 10 - *AutoEyee*

Submitted by: **AutoEye**

**AutoEye** is an app that allows users to report to a another car that their tail light is out, using either a photo or manual reporting system.

Time spent: **30** hours spent in total

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with ...  



## Overview
### Description
AutoEye provides a quick and easy way for drivers to help each other stay safe on the road. With just a few clicks, users can notify other drivers that their taillight is out by uploading a picture of the vehicle's license plate.

To use the app, users can create a free account by registering and logging in. Once logged in, they can browse notifications from other users and earn points for submitting helpful notifications.

If your taillight gets tagged by another user, you'll receive a notification on your device with a picture of your vehicle's license plate, letting you know that your taillight is out. This way, you can quickly take action and fix the issue before it becomes a safety hazard.

Our app is designed to help drivers stay safe on the road by promoting community awareness and responsibility.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Automotive and Utility/Vehicle Safety and Maintenance
- **Mobile:** This app would be primarily developed for mobile. AutoEye would be most effective as a mobile app due to its camera functionality and real-time notification system. These features ensure accuracy and prompt action, promoting community awareness and responsibility on the road.
- **Story:** Allows users to report nonfunctioning taillights they see on the road adn helps drivers know when they need to fix their taillight.
- **Market:** Our potential user base for this app is drivers and car owners. 
- **Habit:** This app could be very habit forming for a daily commuter looking out for road safety.
- **Scope:** First we would start with allowing users to report license plates of vehicles they see with nonfunctioning taillights on the road. In order to make the app more user interactive, we could then evolve into a reward-earning system where users earn stars they can redeem or reach levels based on how many correct reports they file and how many people they help. Large potential maraketing collaborations with car dealer applications, vehicle insurance applications, other vehicle applications such as Upside.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a new account
* User can login
* User can take/upload photo of license plate
* User can recieve notifications
* User can see notifications when their report is confirmed

**Optional Nice-to-have Stories**

* Users can search for other users
* * User can earn Levels/Stars profile rating based on how many accurate reports they've sent in

### 2. Screen Archetypes

* Launch screen
   * User can login (username, password)
   * Click here to register
* Registration screen
   * User can create an account (name, username, password, license plate, email)
* Home
    * User can see past reports
    * User can see their profile rating
<!-- *  Create account
   * Name
   * Username
   * Password
   * License Plate Number
   * Email -->
* Report Screen
   * User can take a photo of a license plate
   * User can manually input a license plate
* Notifications Screen
    * User can see notifications
        * When their taillight is reported
        * If someone confirms their report
        * When they earn stars or level up
* FAQ/Information Screen
   * User can learn how the app works




### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Notifications
* Take Photo
* Profile
* FAQ
* Settings

**Flow Navigation** (Screen to Screen)

* Launch Screen
   * -> Login
   * -> Account creation if no login is available
   * -> Home
* Registration Screen
   * -> Home
* Report Screen
   * -> Home (after you finish reporting)
* FAQ/Information Screen
   * -> Home (after done reading)
* Profile
   * -> Text field to be modified
* Settings
   * -> Toggle settings




## Wireframes

<img src="(https://i.imgur.com/y5CBvFy.jpg)" width=600>![](https://i.imgur.com/y5CBvFy.jpg)


### [BONUS] Digital Wireframes & Mockups

![](https://i.imgur.com/Mezzswc.jpg)

![](https://i.imgur.com/gp4paba.jpg)

### Models

| Property | Type | Description |
| -------- | -------- | -------- |
| objectId     | String     | unique id for the user post (default)     |
| image     | file     | image that the user submits     |
| make     | string     | make of the car reported     |
| licPlate     | string     | license plate of the car reported     |
| color     | string     | color of the car reported     |
| username     | string     | username of the user reporting     |
| sentAt     | DateTime     | date/time when the report was made     |

### Networking
#### List of network requests by screen

- Launch Screen
    - (POST) request to the server with the user's login credentials (e.g., username and password) to authenticate the user.
- Create Account Screen
    - (POST) request to the server with the user's account information (email, password, license number, username) to create a new account.
- Registration Screen
    - (POST) request to the server with the vehicle information provided by the user (license plate number, make/model/color) to associate the vehicle with the user's account.
- Report Screen
    - (POST) request to the server with the report information provided by the user (license plate, vehicle make/model/color, location) to submit the report to the server.
- Notifications Screen
    - (GET) request to retrieve a list of the user's notifications from the server.
- User Profile Screen
    - (GET) request to retrieve the user's profile information from the server.
    - (Update/PUT) request to update the user's profile information on the server.
- Camera Screen
    - (POST) request to upload an image or video captured by the camera to the server.
