import 'package:appnedic/screens/quiz/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nedic',
      theme: ThemeData(
        primaryColor: const Color(0xff0874E6),
      ),
      home: Home(),
    );
  }
}
