import 'package:ark_app/pages/starting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'arK | Artikel Kulo',
      home: StartingUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
