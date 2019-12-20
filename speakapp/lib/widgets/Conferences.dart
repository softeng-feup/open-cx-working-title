import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speakapp/screens/conference_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Conferences extends StatefulWidget {
  final username;

  Conferences(this.username);
  @override
  _ConferencesState createState() => _ConferencesState();
}

 String selectedIndex;

class _ConferencesState extends State<Conferences> {
  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = document['Name'];
        });
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ConferenceScreen(selectedIndex, widget.username)),
        );
      },
      child: ListTile(
        title: Text(
          document['Name'],
          style: TextStyle(
            fontSize: 30.0,
            color: document['Name'] == selectedIndex
                ? Colors.indigo
                : Colors.black,
          ),
        ),
        subtitle: Text(document['Theme']),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-178,
      color: Colors.white60,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: StreamBuilder(
            stream: Firestore.instance.collection('Conference').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Center(
                  child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)));
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) => _buildListItem(context,snapshot.data.documents[index]),
              );
            }),
      ),
    );
  }
}
