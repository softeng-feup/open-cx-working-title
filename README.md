# openCX-Working Title Development Report

Welcome to the documentation pages of the *your (sub)product name* of **openCX**!

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
Draft a small text to help you quickly introduce and describe your product in a short time and a few words (~800 characters), a technique usually known as elevator pitch.

Take a look at the following links to learn some techniques:
* [Crafting an Elevator Pitch](https://www.mindtools.com/pages/article/elevator-pitch.htm)
* [The Best Elevator Pitch Examples, Templates, and Tactics - A Guide to Writing an Unforgettable Elevator Speech, by strategypeak.com](https://strategypeak.com/elevator-pitch-examples/)
* [Top 7 Killer Elevator Pitch Examples, by toggl.com](https://blog.toggl.com/elevator-pitch-examples/)

---
## Requirements

In this section, you should describe all kinds of requirements for your module: functional and non-functional requirements.

Start by contextualizing your module, describing the main concepts, terms, roles, scope and boundaries of the application domain addressed by the project.

### Use case diagram 

![Use Cases](https://github.com/softeng-feup/open-cx-working-title/blob/master/Use%20Cases.png)

Create a use-case diagram in UML with all high-level use cases possibly addressed by your module.

Give each use case a concise, results-oriented name. Use cases should reflect the tasks the user needs to be able to accomplish using the system. Include an action verb and a noun. 

Briefly describe each use case mentioning the following:

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
This section contains the requirements of the product described as **user stories**, organized in a global **[user story map](https://plan.io/blog/user-story-mapping/)** with **user roles** or **themes**.

* As a speaker, i want to receive feedback so that i can improve my presentation.

* As the Audience, I want to be able o send feedback to the speaker, so that they can improve.

* As a Moderator, I want to have access to the feedback provided by the audience, so that I can help the speaker.

* As a Moderator, I want to send important information to the speakers, so that they can adapt.

* As a Speaker, I want to have access to important information, such as time remaining, so that I can stay within my time limits.

* As a Speaker, I want to have special tools (such as to be able to create quizes) that traditional editors don't have, so that I can provide a better time for the audience.

* As the Audience, I want to interact in the activities provided by the speakers.

### Domain model

![Domain Model](https://github.com/softeng-feup/open-cx-working-title/blob/master/Domain%20Model.png)

---

## Architecture and Design
The architecture of a software system encompasses the set of key decisions about its overall organization. 

A well written architecture document is brief but reduces the amount of time it takes new programmers to a project to understand the code to feel able to make modifications and enhancements.

To document the architecture requires describing the decomposition of the system in their parts (high-level components) and the key behaviors and collaborations between them. 

In this section you should start by briefly describing the overall components of the project and their interrelations. You should also describe how you solved typical problems you may have encountered, pointing to well-known architectural and design patterns, if applicable.

### Logical architecture
The purpose of this subsection is to document the high-level logical structure of the code, using a UML diagram with logical packages, without the worry of allocating to components, processes or machines.

It can be beneficial to present the system both in a horizontal or vertical decomposition:
* horizontal decomposition may define layers and implementation concepts, such as the user interface, business logic and concepts; 
* vertical decomposition can define a hierarchy of subsystems that cover all layers of implementation.

### Physical architecture
The goal of this subsection is to document the high-level physical structure of the software system (machines, connections, software components installed, and their dependencies) using UML deployment diagrams or component diagrams (separate or integrated), showing the physical structure of the system.

It should describe also the technologies considered and justify the selections made. Examples of technologies relevant for openCX are, for example, frameworks for mobile applications (Flutter vs ReactNative vs ...), languages to program with microbit, and communication with things (beacons, sensors, etc.).

### Prototype
To help on validating all the architectural, design and technological decisions made, we usually implement a vertical prototype, a thin vertical slice of the system.

In this subsection please describe in more detail which, and how, user(s) story(ies) were implemented.

---

## Implementation
Regular product increments are a good practice of product management. 

While not necessary, sometimes it might be useful to explain a few aspects of the code that have the greatest potential to confuse software engineers about how it works. Since the code should speak by itself, try to keep this section as short and simple as possible.

Use cross-links to the code repository and only embed real fragments of code when strictly needed, since they tend to become outdated very soon.

---
## Test

There are several ways of documenting testing activities, and quality assurance in general, being the most common: a strategy, a plan, test case specifications, and test checklists.

In this section it is only expected to include the following:
* test plan describing the list of features to be tested and the testing methods and tools;
* test case specifications to verify the functionalities, using unit tests and acceptance tests.
 
A good practice is to simplify this, avoiding repetitions, and automating the testing actions as much as possible.

---
## Configuration and change management

Configuration and change management are key activities to control change to, and maintain the integrity of, a project’s artifacts (code, models, documents).

For the purpose of ESOF, we will use a very simple approach, just to manage feature requests, bug fixes, and improvements, using GitHub issues and following the [GitHub flow](https://guides.github.com/introduction/flow/).


---

## Project management

As a project management tool, we have adopted [Trello](https://trello.com) as it is a simple tool that allows us to keep an overview
of the development of the project, as well as plan future changes in which we can easily assign and register tasks. Outside that, Github is being used as the repository to keep the code and other resources.

[Trello/Working-Title] (https://trello.com/b/OZj5Xuko/esof-project)
