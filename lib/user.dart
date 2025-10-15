import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User"), backgroundColor: Colors.orange),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('User ${index + 1}'),
              subtitle: Text('hello user ${index + 1}'),
              minTileHeight: 50.0,
              tileColor: Colors.purple[50],
            ),
          );
        },
      ),
    );
  }
}
