import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';


class CalendarPage2 extends StatefulWidget {
  @override
  _CalendarPage2State createState() => new _CalendarPage2State();
}

List<DateTime> presentDates = [
  DateTime(2019, 12, 1),
  DateTime(2019, 12, 3),
  DateTime(2019, 12, 4),
  DateTime(2019, 12, 5),
  DateTime(2019, 12, 6),
  DateTime(2019, 12, 9),
  DateTime(2019, 12, 10),
  DateTime(2019, 12, 11),
  DateTime(2019, 12, 15),
  DateTime(2019, 12, 11),
  DateTime(2019, 12, 15),
];
List<DateTime> absentDates = [
  DateTime(2019, 12, 2),
  DateTime(2019, 12, 7),
  DateTime(2019, 12, 8),
  DateTime(2019, 12, 12),
  DateTime(2019, 12, 13),
  DateTime(2019, 12, 14),
  DateTime(2019, 12, 16),
  DateTime(2019, 12, 17),
  DateTime(2019, 12, 18),
  DateTime(2019, 12, 17),
  DateTime(2019, 12, 18),
];

class _CalendarPage2State extends State<CalendarPage2> {

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );

  DateTime _currentDate2 = DateTime.now();
  static Widget _presentIcon(String day) => Container(
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    ),
    child: Center(
      child: Text(
        day,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
  static Widget _absentIcon(String day) => Container(
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    ),
    child: Center(
      child: Text(
        day,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );



  CalendarCarousel _calendarCarouselNoHeader;

  var len = 9;
  double cHeight;

  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height;
    for (int i = 0; i < len; i++) {
      _markedDateMap.add(
        presentDates[i],
        new Event(
          date: presentDates[i],
          title: 'Event 5',
          icon: _presentIcon(
            presentDates[i].day.toString(),
          ),
        ),
      );}


    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      height: cHeight * 0.54,
      onDayPressed: (DateTime date, List<Event> events) {
        showDialog(
          context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: new Text('Create new Event'),
              content: new Text('Do you wish to add a new event on\n'
                  + date.day.toString() + '-' + date.month.toString() + '-' + date.year.toString()
                  + ' at ' + date.hour.toString() + ':' + date.minute.toString()
                  + ' ?'),
              actions: <Widget>[
                new FlatButton(
                  child: new Text('YES'),
                  onPressed: (){
                    presentDates.add(date);
                    Navigator.of(context).pop();
                  },
                ),
                new FlatButton(
                  child: new Text('NO'),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          },
        );
        for(int i = 0; i < presentDates.length; i++){
          _markedDateMap.add(
            presentDates[i],
            new Event(
              date: presentDates[i],
              title: 'Event 5',
              icon: _presentIcon(
                presentDates[i].day.toString(),
              ),
            ),
          );
        }
        print('Pressed Day');
      },
      weekdayTextStyle: TextStyle(
          color: Colors.black
      ),
      weekendTextStyle: TextStyle(
        color: Colors.blue,
      ),
      todayButtonColor: Colors.blue[200],
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      markedDateMoreShowTotal:
      null, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calendar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _calendarCarouselNoHeader,
            markerRepresent(Colors.blue, "Conference"),
          ],
        ),
      ),
    );
  }

  Widget markerRepresent(Color color, String data) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: color,
        radius: cHeight * 0.022,
      ),
      title: new Text(
        data,
      ),
    );
  }


}

