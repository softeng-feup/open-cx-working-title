import 'package:flutter/material.dart';
import 'package:speakapp/widgets/calendar.dart';
import 'package:speakapp/widgets/timer.dart';
import 'package:speakapp/screens/add_conference.dart';

class CategorySelector extends StatefulWidget {
  final username;
  CategorySelector(this.username);
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Conferences', 'Add Conference', 'Timer', 'Calendar'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.blue[900],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              if (selectedIndex == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConferenceAdd(widget.username)),
                );
                selectedIndex = 0;
              }
              if (selectedIndex == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Timer()),
                );
                selectedIndex = 0;
              }
              if (selectedIndex == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage2()),
                );
                selectedIndex = 0;
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
