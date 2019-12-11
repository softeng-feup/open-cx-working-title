import 'package:flutter/material.dart';
import 'package:speakapp/screens/home_screen.dart';
import 'package:speakapp/screens/login.dart';
import 'package:speakapp/widgets/timer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Working Title',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: LoginScreen(),
    );
  }
}
