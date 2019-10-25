import 'package:flutter/material.dart';
import 'package:quiver/async.dart';

class Timer extends StatefulWidget {
  @override
  TimerState createState() => TimerState();
}

class TimerState extends State<Timer> {
  int _start = 10;
int _current = 10;

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

Widget build(BuildContext context) {
  return new Scaffold(
    appBar: AppBar(title: Text("Timer test")),
    body: Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            startTimer();
          },
          child: Text("start"),
        ),
        Text("$_current")
      ],
    ),
  );
}
}

