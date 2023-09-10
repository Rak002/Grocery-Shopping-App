import 'package:flutter/material.dart';
import 'screens/intro_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery Shopping App',
      home: IntroScreen(),
    );
  }
}
