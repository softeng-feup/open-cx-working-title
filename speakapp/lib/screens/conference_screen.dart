import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ConferenceScreen extends StatefulWidget {
  final String conference;
  final String username;
  final TextEditingController textEditingController =
      new TextEditingController();

  ConferenceScreen(this.conference, this.username);

  @override
  _ConferenceScreen createState() => _ConferenceScreen();
}

class _ConferenceScreen extends State<ConferenceScreen> {
  String message;

  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Text(
        document['Message'],
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
      document['Username'],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.conference),
      ),
      body: StreamBuilder(
          stream: Firestore.instance
              .collection('Messages')
              .where('ConferenceName', isEqualTo: widget.conference)
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)));
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _buildListItem(context, snapshot.data.documents[index]),
            );
          }),
      bottomNavigationBar: Container(
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                child: TextField(
                  style: TextStyle(color: Colors.blue, fontSize: 15.0),
                  onChanged: (text) {
                    message = text;
                  },
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type your message...',
                    hintStyle: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ),
            ),
            Material(
              child: new Container(
                margin: new EdgeInsets.symmetric(horizontal: 8.0),
                child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () =>
                      Firestore.instance.collection('Messages').add({
                    "Message": message,
                    "ConferenceName": widget.conference,
                    "Username": widget.username,
                    "Date": DateTime.now().millisecondsSinceEpoch.toString(),
                  }),
                  color: Colors.blue[900],
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
        width: double.infinity,
        height: 50.0,
        decoration: new BoxDecoration(
            border: new Border(
                top: new BorderSide(color: Colors.blue[900], width: 0.5)),
            color: Colors.white),
      ),
    );
  }
}
