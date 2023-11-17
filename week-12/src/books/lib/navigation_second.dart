import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Febryan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  color = Colors.purple;
                  Navigator.pop(context, color);
                },
                child: const Text("purple")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.black;
                  Navigator.pop(context, color);
                },
                child: const Text("Black")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.red;
                  Navigator.pop(context, color);
                },
                child: const Text("Red")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}