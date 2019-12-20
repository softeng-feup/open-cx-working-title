import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speakapp/screens/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ConferenceAdd extends StatefulWidget {
  final username;
  ConferenceAdd(this.username);
  @override
  _ConferenceAdd createState() => _ConferenceAdd();
}

String name;
String theme;

class _ConferenceAdd extends State<ConferenceAdd> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            'SpeakApp',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0), children: <Widget>[
          Text(
            "Conference Name ",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          TextField(
            onChanged: (text) {
              name = text;
            },
          ),
          Text(""),
          Text(
            "Conference Theme ",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          TextField(
            onChanged: (text) {
              theme = text;
            },
          ),
          FlatButton(
            onPressed: () {
              if(name != null && theme != null){
                Firestore.instance.collection('Conference').add({"Name": name, "Theme": theme,});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen(widget.username)),
                );
              }
            },
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[900],
              ),
            ),
          )
        ]));
  }
}
