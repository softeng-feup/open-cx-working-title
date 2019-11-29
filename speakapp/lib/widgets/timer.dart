import 'package:flutter/material.dart';
import 'package:quiver/async.dart';

class Timer extends StatefulWidget {
  @override
  TimerState createState() => TimerState();
}

class TimerState extends State<Timer> {
  int _start = 0;
  int _current = 0;

void startTimer() {
  CountdownTimer countDownTimer = new CountdownTimer(
    new Duration(seconds: _start),
    new Duration(seconds: 1),
  );

  var sub = countDownTimer.listen(null);
  sub.onData((duration) {
    setState(() { _current = _start - duration.elapsed.inSeconds; });
  });

  sub.onDone(() {
    print("Done");
    sub.cancel();
  });
}

bool qna = false;

Widget build(BuildContext context) {
  return new Scaffold(
    appBar: AppBar(title: Text("Timer test")),
    body: ListView(
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        Text(
          "Choose the amount of time for the conference (in minutes): ",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
          ),
        TextField(
          onChanged: (text) {
            if((!(_start != _current)) && qna == false){
            _setTime(text);
            
            }
          },
        ),
      Center(
        child: RaisedButton(
          elevation: 5,
            onPressed: () {
              if(qna == false){
              startTimer();
              qna = true;
              }
            },
            child: Text("start"),
          ),
      ),
        Center(
          child: Text(
            (_current/60).toInt().toString() + ":" + (_current%60).toString(),
            style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.w900,
              fontSize: 60,
            ),
          ),
        ),
        Text(
          "Choose the amount of time for the QnA (in minutes): ",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
        ),
        TextField(
          onChanged: (text) {
            if(_current == 0 && qna == true){
            _setTime(text);
            }
          },
        ),
        Center(
          child: RaisedButton(
            elevation: 5,
            onPressed: () {
              startTimer();
              qna = true;
            },
            child: Text("start"),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(
                    "In order to use the timer you must first state how much time you have for your conference.\n"
                    "At this moment you can press the first start button.\n"
                    "Once the timer has reached zero, you can state how much time you have for the Q&A moment.\n"
                    "Enjoy!\n"
                  ),
                );
              },
            );
          },
          tooltip: 'Guide',
          child: Icon(
            Icons.info_outline
          ),
          backgroundColor: Colors.white,
        ),
      ],
    ),
  );
}

void _setTime(String time){
  setState(() {
    _start =  int.parse(time)*60;
    _current = int.parse(time)*60;
  });
}



}

