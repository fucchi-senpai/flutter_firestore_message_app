import 'package:flutter/material.dart';
import 'package:flutter_firestore_message_app/widgets/chat_list_row.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> _getListItems() {
    List<Widget> items = [];

    for (int i = 0; i < 10; i++) {
      items.add(ChatListRow());
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ChatListRow();
        },
        itemCount: _getListItems().length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
