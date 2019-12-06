# openCX-Working Title Development Report

Welcome to the documentation pages of the SpeakApp of **openCX**!

You can find here detailed about the (sub)product, hereby mentioned as module, from a high-level vision to low-level implementation decisions, a kind of Software Development Report (see [template](https://github.com/softeng-feup/open-cx/blob/master/docs/templates/Development-Report.md)), organized by discipline (as of RUP): 

* Business modeling 
  * [Product Vision](#Product-Vision)
  * [Elevator Pitch](#Elevator-Pitch)
* Requirements
  * [Use Case Diagram](#Use-case-diagram)
  * [User stories](#User-stories)
  * [Domain model](#Domain-model)
* Architecture and Design
  * [Logical architecture](#Logical-architecture)
  * [Physical architecture](#Physical-architecture)
  * [Prototype](#Prototype)
* [Implementation](#Implementation)
* [Test](#Test)
* [Configuration and change management](#Configuration-and-change-management)
* [Project management](#Project-management)

So far, contributions are exclusively made by the initial team, but we hope to open them to the community, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us! 

Thank you!

* Carlos Miguel Guerra Soeiro
* Daniel Gazola Bradaschia
* José Rafael Fidalgo Fonseca Matias
* Paulo André Areias Gomes Leal Pinto

---

## Product Vision
An app that improves the interaction between the speaker and the audiance or vice-versa, allowing for the sepaker to easily change slides, start games and videos or send links to his/hers guests from a smartphone.

---
## Elevator Pitch

Have you ever needed a quick and simple app for your event, but didn't know where to start? We at the Working Title can help you with
a quick, simple and easy to use app, with the tools that you desire. Currently, we provide ways for the speaker to control the time of the conference and the audience can get all the information needed to attend their favorite confernce. As we work with firebase, a reliable database provided by Google, there is no need for extra technology or investment, so all you need is a smartphone or tablet!

---
## Requirements

* A smartphone or tablet with internet access is required, along with a google account.
* App is only available on android.

### Use case diagram 

![Use Cases](https://github.com/softeng-feup/open-cx-working-title/blob/master/Use%20Cases.png)

* **Send Message**. Every user of the app should be able to send message, as it is the main way of sending feedback and communicating. As a precondition, it should be noted that you will only be able to send messages if you have taken part in the conference

* **Receive Message**. Every user of the app should be able to receive message, be it for communication or feedback. As a precondition, you should be able to send messages.

* **Rate The Session**. Every user of the app should be able to rate the session, as it is a simple way to give feedback. You will only be able to rate a conference if you have taken part in it.

* **Generate Invitation Code**. The speaker is able to generate invitation codes to send to his/hers audience, to play a game, for example. Only the speaker should be able to do it, and and a quiz need to be created before the invitation.

* **Create Presentation**. The speaker is able to create slide presentations. Only he speaker should be able to do it, and a option to load a previously created presentations.

* **Create Quiz**. The speaker is able to create quizes, as a game to interact with the audience. Only the speaker can do it, as long as a presentation exists.

* **Check Attendence Statistics**. Both the speaker and moderators are able o check the session statistics, that can be used to improve future conferences and presentations. This will only be possible for session that exists.

* **Filtering Messages**. The moderator is able to filter messages that arrive during a session, as a way to avoid spam and unecessary comments. This should only be possible to session that are ongoing.

* **Ban/Kick Participants**. The moderator is able to Ban/Kick Participants, if it is considered necessary. This should only be possible to session that are ongoing.

### User stories
This section contains the requirements of the product described as **[user stories](https://trello.com/b/OZj5Xuko/esof-project)**, organized in a global **[user story map](https://plan.io/blog/user-story-mapping/)** with **user roles** or **themes**.

* As a Speaker, I want to able to set and see the time remainig of my presentation, so that I can stay within my time limits.

* As a Speaker, I want to be able to set a timer for my QnA period, so that I can know how much time I can spend on the questions

* As a Speaker, I want to have an easy access to information, so that I can easily navigate through the information about the conference.

* As a User, I want to be able to easily access all the conferences and their themes, so that I can organize my schedule.

* As a User, I want to be able to easily access all the conferences and their themes, so that I can organize my schedule.

* As a Speaker, I want to have special tools (such as to be able to create quizes) that traditional editors don't have, so that I can provide a better time for the audience.

* As Users, we want to have a feedback system:
  * As a speaker, i want to receive feedback so that i can improve my presentation.
  * As the Audience, I want to be able o send feedback to the speaker, so that they can improve.
  
* As a User, I want to send question during QnA, so that I can interact with the speaker.  

* As the Audience, I want to interact in the activities provided by the speakers, such as quizes.

* As a Speaker, I want to have special tools (such as to be able to create quizes) that traditional editors don't have, so that I can provide a better time for the audience.

### Domain model

![Domain Model](https://github.com/softeng-feup/open-cx-working-title/blob/master/Domain%20Model.png)

Above we can see a representation of all the relationships involved. It should be noted that the moderator has the same privilegies as the speaker, however he possess access to more information, as he/her is capable of overseeing all the sessions.

---

## Architecture and Design
**To be Implemented**

### Prototype

A simple UI, with listing of conferences and their respectives themes is implemented. New features, such as timer and login are being implemented.

![Prototype1](https://github.com/softeng-feup/open-cx-working-title/blob/master/prototype1.png)

A sign in option through google account is available.

![Prototype2](https://github.com/softeng-feup/open-cx-working-title/blob/master/prototype2.png)

---

## Implementation

As we adopted an agile method of implementation, we developed the tools considering a cost/necessity of our user stories. The UI was adapted as new tools were implemented, while keeping in mind that it needed to be intuitive. Code organization and quality were a main goal from the beginning, as we intend to deliver the best product possible. 

---
## Test

Manual testing is being done while automated tests are being implemented. 

---

## Project management

As a project management tool, we have adopted [Trello](https://trello.com) as it is a simple tool that allows us to keep an overview
of the development of the project, as well as plan future changes in which we can easily assign and register tasks. Outside that, Github is being used as the repository to keep the code and other resources.

[Trello/Working-Title] (https://trello.com/b/OZj5Xuko/esof-project)
