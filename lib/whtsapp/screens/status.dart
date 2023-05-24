import 'package:flutter/material.dart';

class WhatsAppStatusPage extends StatefulWidget {
  @override
  _WhatsAppStatusPageState createState() => _WhatsAppStatusPageState();
}

class _WhatsAppStatusPageState extends State<WhatsAppStatusPage> {
  List<String> _statuses = [    'Feeling happy today!',    'Out with friends',    'Traveling to a new place',    'Enjoying the sunshine',    'Trying out a new recipe',    'Relaxing at home',    'Learning something new',    'Watching a movie',    'Working hard',    'Enjoying the weekend'  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
      ),
      body: ListView.builder(
        itemCount: _statuses.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
            ),
            title: Text('My Status'),
            subtitle: Text(_statuses[index]),
          );
        },
      ),
    );
  }
}
