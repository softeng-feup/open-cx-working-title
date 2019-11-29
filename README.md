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

**To be Implemented**

---
## Requirements

In this section, you should describe all kinds of requirements for your module: functional and non-functional requirements.

Start by contextualizing your module, describing the main concepts, terms, roles, scope and boundaries of the application domain addressed by the project.

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

* As a speaker, i want to receive feedback so that i can improve my presentation.

* As the Audience, I want to be able o send feedback to the speaker, so that they can improve.

* As a Moderator, I want to have access to the feedback provided by the audience, so that I can help the speaker.

* As a Moderator, I want to send important information to the speakers, so that they can adapt.

* As a Speaker, I want to have access to important information, such as time remaining, so that I can stay within my time limits.

* As a Speaker, I want to have special tools (such as to be able to create quizes) that traditional editors don't have, so that I can provide a better time for the audience.

* As the Audience, I want to interact in the activities provided by the speakers.

### Domain model

![Domain Model](https://github.com/softeng-feup/open-cx-working-title/blob/master/Domain%20Model.png)

Above we can see a representation of all the relationships involved. It should be noted that the moderator has the same privilegies as the speaker, however he possess access to more information, as he/her is capable of overseeing all the sessions.

---

## Architecture and Design
**To be Implemented**

### Prototype
A simple UI, with timer and chat is being implemented

---

## Implementation

A simple UI is being implemented, as the code progresses. So far a listing of the conferences, along with its respectives themes and times can be viewed. A timer function for the speaker has also been implemented , in which the user is able to set specific timers for its conference.

---
## Test
**To be Implemented**

---

## Project management

As a project management tool, we have adopted [Trello](https://trello.com) as it is a simple tool that allows us to keep an overview
of the development of the project, as well as plan future changes in which we can easily assign and register tasks. Outside that, Github is being used as the repository to keep the code and other resources.

[Trello/Working-Title] (https://trello.com/b/OZj5Xuko/esof-project)
