import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speakapp/screens/conference_screen.dart';

class Conferences extends StatefulWidget {
  @override
  _ConferencesState createState() => _ConferencesState();
}

class _ConferencesState extends State<Conferences> {
  static List<String> conferences = [
    'Conference 1',
    'Conference 2',
    'Conference 3',
    'Conference 4'
  ];
  static List<String> themes = ['LCOM', 'Flutter', 'Prolog', 'ESOF'];
  static List<String> fi = conferences + themes;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 513.0,
      color: Colors.white60,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: fi.length - 4,
          itemBuilder: (context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ConferenceScreen(conferences[index])),
                );
              },
              child: ListTile(
                title: Text(
                  '${fi[index]}',
                  style: TextStyle(
                    fontSize: 30.0,
                    color:
                        index == selectedIndex ? Colors.indigo : Colors.black,
                  ),
                ),
                subtitle: Text('${fi[index + 4]}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
