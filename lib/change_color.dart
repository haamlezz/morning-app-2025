import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  final List<Color> colors = [Colors.red, Colors.green, Colors.blue];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors[currentIndex],
        title: Text("Change Color"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = (currentIndex + 1) % colors.length;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: 500,
            height: 500,
            color: colors[currentIndex],
          ),
        ),
      ),
    );
  }
}
