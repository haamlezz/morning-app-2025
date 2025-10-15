import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"), backgroundColor: Colors.orange),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Ton and Song"),
            Image.asset('assets/images/ton_song_forever.JPG'),
          ],
        ),
      ),
    );
  }
}
