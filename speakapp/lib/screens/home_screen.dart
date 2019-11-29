import 'package:flutter/material.dart';
import 'package:speakapp/widgets/category_selector.dart';
import 'package:speakapp/widgets/Conferences.dart';
import 'package:speakapp/widgets/timer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SpeakApp',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'SpeakApp',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
            ),
            ListTile(
              title: Text(
                'Conferences',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Timer',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Timer()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: Column(
                children: <Widget>[
                  Conferences(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
