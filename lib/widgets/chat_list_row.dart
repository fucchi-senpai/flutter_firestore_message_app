import 'package:flutter/material.dart';
import 'package:flutter_firestore_message_app/screens/chat_screen.dart';
import 'package:flutter_firestore_message_app/utils/page_transition_util.dart';

class ChatListRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        PageTransitionUtil.next(context, nextScreen: ChatScreen());
      },
      leading: CircleAvatar(
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey,
      ),
      title: Text(
        'John Smith',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Flutter and Firebase are awesome!',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        'Jul 24',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
