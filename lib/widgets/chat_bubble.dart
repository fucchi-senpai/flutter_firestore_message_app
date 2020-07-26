import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  bool isMyMessage = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: isMyMessage
            ? _myMessageBubble('test')
            : _othersMessageBubble('test'),
      ),
    );
  }

  Widget _myMessageBubble(String message) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(message),
      ),
      color: Colors.teal[200],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.0),
        bottomLeft: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      ),
      elevation: 5.0,
    );
  }

  Widget _othersMessageBubble(String message) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 30.0,
          ),
          backgroundColor: Colors.grey,
          radius: 20.0,
        ),
        SizedBox(
          width: 10.0,
        ),
        isMyMessage ? _myMessageBubble('test') : _othersMessageBubble('test')
      ],
    );
  }
}
