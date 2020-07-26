import 'package:flutter/material.dart';
import 'package:flutter_firestore_message_app/widgets/chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String textFieldValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('John Smith'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[ChatBubble()],
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: 'Type message',
                    contentPadding: EdgeInsets.all(15.0),
                    suffixIcon: Container(
                      width: 25.0,
                      child: FlatButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.send,
                          color: Colors.teal[200],
                        ),
                      ),
                    ),
                  ),
                  onChanged: (String text) {
                    this.textFieldValue = text;
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
