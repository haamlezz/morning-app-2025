import 'package:flutter/material.dart';
import 'package:laotop_morning/nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Nav(),
      appBar: AppBar(title: Text("ແອັບບສາວ PR"), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            Text("Hello", style: TextStyle(color: Colors.purple, fontSize: 30)),
            Text("ສະບາຍດີ"),
            Text("Bonjour"),
            Row(children: [Text("A"), Text("B"), Text("C")]),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text("Goto About"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              child: Text("Goto User"),
            ),
          ],
        ),
      ),
    );
  }
}
