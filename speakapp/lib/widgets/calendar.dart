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

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
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

      /*for (int i = 0; i < len; i++) {
        _markedDateMap.add(
          absentDates[i],
          new Event(
            date: absentDates[i],
            title: 'Event 5',
            icon: _absentIcon(
              absentDates[i].day.toString(),
            ),
          ),
        );
      }*/
    

    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      height: cHeight * 0.54,
      onDayPressed: (DateTime date, List<Event> events) {
        presentDates.add(date);
        print(date.toString());
        print(events.toString());
        _markedDateMap.add(
          date,
          new Event(
            date: date,
            title: 'YOLO',
            icon: _presentIcon(
              date.day.toString(),
            ))
        );
        print('Ola');
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
            //markerRepresent(Colors.red, "Absent"),
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
/*//AS IT WAS 
class CalendarCarouselExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          //take an action with date and its events
        },
        thisMonthDayBorderColor: Colors.transparent,
        selectedDayButtonColor: Color(0xFF30A9B2),
        selectedDayBorderColor: Color(0xFF30A9B2),
        selectedDayTextStyle: TextStyle(color: Colors.white),
        weekendTextStyle: TextStyle(color: Colors.white),
        daysTextStyle: TextStyle(color: Colors.white),
        nextDaysTextStyle: TextStyle(color: Colors.grey),
        prevDaysTextStyle: TextStyle(color: Colors.grey),
        weekdayTextStyle: TextStyle(color: Colors.grey),
        weekDayFormat: WeekdayFormat.short,
        firstDayOfWeek: 0,
        showHeader: false,
        isScrollable: false,
        weekFormat: false,
        height: 280.0,
        selectedDateTime: DateTime(2019, 4, 9),
        daysHaveCircularBorder: true,
        customGridViewPhysics: NeverScrollableScrollPhysics(),
        markedDatesMap: _getCarouselMarkedDates(),
        markedDateWidget: Container(
          height: 3,
          width: 3,
          decoration: new BoxDecoration(
            color: Color(0xFF30A9B2),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }

  EventList<Event> _getCarouselMarkedDates() {
    return EventList<Event>(
      events: {
        new DateTime(2019, 4, 3): [
          new Event(
            date: new DateTime(2019, 4, 3),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 5): [
          new Event(
            date: new DateTime(2019, 4, 5),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 22): [
          new Event(
            date: new DateTime(2019, 4, 22),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 24): [
          new Event(
            date: new DateTime(2019, 4, 24),
            title: 'Event 1',
          ),
        ],
        new DateTime(2019, 4, 26): [
          new Event(
            date: new DateTime(2019, 4, 26),
            title: 'Event 1',
          ),
        ],
      },
    );
  }

}*/

