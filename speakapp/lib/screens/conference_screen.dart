import 'package:flutter/material.dart';

class ConferenceScreen extends StatelessWidget {
  final String conference;

  ConferenceScreen(this.conference);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.conference),
      ),
      body: Center(),
    );
  }
}
