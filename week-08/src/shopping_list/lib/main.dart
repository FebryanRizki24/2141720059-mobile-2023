import 'package:flutter/material.dart';
import 'package:shopping_list/pages/home_page.dart';
import 'package:shopping_list/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/item': (context) => ItemPage(),
      },
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
